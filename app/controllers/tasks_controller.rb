class TasksController < ApplicationController
  def index
    @tasks = Task.all # テンプレート変数 acton method - view で値を渡す, Task.all -> tasks table から すべてのレコードを取得 → sql を書かずにすむ(裏で rails が sql を発行している)
  end

  def new
    @task = Task.new # model task のインスタンスを生成する
  end

  def create
    # ボタンを押したときにフォームの値をサーバに送信し、データをdb の保存させる
    @task = Task.new(task_params) # form に入力されたデータを元にタスクモデルのインスタンスを作成する
    if @task.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def task_params
    # task_params params -> form から送られたデータ
    # permit params 内の title カラムのみ db に書く 悪意のあるデータの書き換えを防ぐ
    params[:task].permit(:title)
  end

end
