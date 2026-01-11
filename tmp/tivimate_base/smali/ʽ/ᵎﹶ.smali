.class public final Lʽ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/יـ;


# static fields
.field public static ʽʽ:I

.field public static ˈٴ:Ljava/lang/reflect/Field;

.field public static ˊʻ:Ljava/lang/reflect/Field;

.field public static ᴵᵔ:Ljava/lang/reflect/Field;


# instance fields
.field public final synthetic ʾˋ:I

.field public ᴵˊ:Lʽ/ٴﹶ;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lʽ/ᵎﹶ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lʽ/ٴﹶ;I)V
    .locals 0

    iput p2, p0, Lʽ/ᵎﹶ;->ʾˋ:I

    iput-object p1, p0, Lʽ/ᵎﹶ;->ᴵˊ:Lʽ/ٴﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ᵎﹶ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V
    .locals 2

    .prologue
    iget v0, p0, Lʽ/ᵎﹶ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget p1, Lʽ/ᵎﹶ;->ʽʽ:I

    const/4 p2, 0x1

    if-nez p1, :cond_1

    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x2

    :try_start_0
    sput v0, Lʽ/ᵎﹶ;->ʽʽ:I

    const-string v0, "mServedView"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lʽ/ᵎﹶ;->ᴵᵔ:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v0, "mNextServedView"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lʽ/ᵎﹶ;->ˊʻ:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v0, "mH"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    sput-object p1, Lʽ/ᵎﹶ;->ˈٴ:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sput p2, Lʽ/ᵎﹶ;->ʽʽ:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    sget p1, Lʽ/ᵎﹶ;->ʽʽ:I

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lʽ/ᵎﹶ;->ᴵˊ:Lʽ/ٴﹶ;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    :try_start_1
    sget-object p2, Lʽ/ᵎﹶ;->ˈٴ:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    monitor-enter p2

    :try_start_2
    sget-object v0, Lʽ/ᵎﹶ;->ᴵᵔ:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    :try_start_3
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_4
    sget-object v0, Lʽ/ᵎﹶ;->ˊʻ:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    goto :goto_1

    :catch_1
    :try_start_6
    monitor-exit p2

    goto :goto_1

    :catch_2
    monitor-exit p2

    goto :goto_1

    :catch_3
    monitor-exit p2

    goto :goto_1

    :goto_0
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    :catch_4
    :cond_5
    :goto_1
    return-void

    :pswitch_0
    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    if-ne p2, v0, :cond_6

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p2, v0, :cond_6

    iget-object p2, p0, Lʽ/ᵎﹶ;->ᴵˊ:Lʽ/ٴﹶ;

    iget-object p2, p2, Lʽ/ٴﹶ;->ٴᵢ:Lʽ/ʽﹳ;

    check-cast p1, Lʽ/ٴﹶ;

    invoke-static {p1}, Lʽ/ᵔᵢ;->ﹳٴ(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p2, Lʽ/ʽﹳ;->ˑﹳ:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean p1, p2, Lʽ/ʽﹳ;->ᵎﹶ:Z

    invoke-virtual {p2, p1}, Lʽ/ʽﹳ;->ⁱˊ(Z)V

    :cond_6
    return-void

    :pswitch_1
    iget-object p1, p0, Lʽ/ᵎﹶ;->ᴵˊ:Lʽ/ٴﹶ;

    iget-object p2, p1, Lʽ/ٴﹶ;->ˊʻ:Landroidx/lifecycle/ˏᵢ;

    if-nez p2, :cond_8

    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lʽ/ʼˎ;

    if-eqz p2, :cond_7

    iget-object p2, p2, Lʽ/ʼˎ;->ﹳٴ:Landroidx/lifecycle/ˏᵢ;

    iput-object p2, p1, Lʽ/ٴﹶ;->ˊʻ:Landroidx/lifecycle/ˏᵢ;

    :cond_7
    iget-object p2, p1, Lʽ/ٴﹶ;->ˊʻ:Landroidx/lifecycle/ˏᵢ;

    if-nez p2, :cond_8

    new-instance p2, Landroidx/lifecycle/ˏᵢ;

    invoke-direct {p2}, Landroidx/lifecycle/ˏᵢ;-><init>()V

    iput-object p2, p1, Lʽ/ٴﹶ;->ˊʻ:Landroidx/lifecycle/ˏᵢ;

    :cond_8
    iget-object p1, p1, Lʽ/ٴﹶ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    return-void

    :pswitch_2
    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    if-ne p2, p1, :cond_a

    iget-object p1, p0, Lʽ/ᵎﹶ;->ᴵˊ:Lʽ/ٴﹶ;

    iget-object p1, p1, Lʽ/ٴﹶ;->ᴵˊ:Lᴵˈ/ᵔᵢ;

    const/4 p2, 0x0

    iput-object p2, p1, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    iget-object p1, p0, Lʽ/ᵎﹶ;->ᴵˊ:Lʽ/ٴﹶ;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lʽ/ᵎﹶ;->ᴵˊ:Lʽ/ٴﹶ;

    invoke-virtual {p1}, Lʽ/ٴﹶ;->ᵔי()Landroidx/lifecycle/ˏᵢ;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/ˏᵢ;->ﹳٴ()V

    :cond_9
    iget-object p1, p0, Lʽ/ᵎﹶ;->ᴵˊ:Lʽ/ٴﹶ;

    iget-object p1, p1, Lʽ/ٴﹶ;->ˉٴ:Lʽ/ˆʾ;

    iget-object p2, p1, Lʽ/ˆʾ;->ˈٴ:Lʽ/ٴﹶ;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_a
    return-void

    :pswitch_3
    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    if-ne p2, p1, :cond_c

    iget-object p1, p0, Lʽ/ᵎﹶ;->ᴵˊ:Lʽ/ٴﹶ;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_b
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
