# Todo App Layered Architecture

### 1. データアクセス層 (Data Access Layer)

**ディレクトリ:**  `lib/domain/todos/shared_prefarences_todos_repository.dart`

-   TODOデータを`SharedPreferences`を使用して永続化します。
    
-   データの保存や取得の責務を持ちます。
    

### 2. ドメイン層 (Domain Layer)

**ディレクトリ:**  `lib/domain`

-   アプリケーションのビジネスルールを定義します。
    
-   エンティティ（`Todo` モデル）やリポジトリインターフェースを管理します。
    

### 3. アプリケーションサービス層 (Application Service Layer)

**ディレクトリ:**  `lib/use_cases`

-   ビジネスロジックを実装し、データ層とUI層をつなぐ役割を持ちます。
    
-   ユースケースを定義し、データ取得や状態変更のロジックをここに記述します。
    

### 4. ユーザーインターフェース層 (User Interface Layer)

**ディレクトリ:**  `lib/user_interfaces`

-   ユーザーが操作する画面やウィジェットを管理します。
    
-   `Provider` や `Riverpod` などの状態管理を活用し、アプリの動作を制御します。
