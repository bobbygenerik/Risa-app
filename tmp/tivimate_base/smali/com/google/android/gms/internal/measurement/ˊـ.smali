.class public final Lcom/google/android/gms/internal/measurement/ˊـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# static fields
.field public static ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˊـ;


# instance fields
.field public ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public ˈٴ:Ljava/lang/Object;

.field public ᴵˊ:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    iput p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/measurement/ـˑ;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ـˑ;-><init>(Landroid/os/Handler;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    return-void
.end method

.method public static ᵎﹶ(Landroidx/leanback/widget/ˈʿ;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    iget-object v1, p0, Landroidx/leanback/widget/ˈʿ;->ˉـ:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    iget-object p0, v0, Landroidx/leanback/widget/ʾᵎ;->ᵎﹶ:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Landroidx/leanback/widget/ʾᵎ;->ᵎﹶ:Ljava/lang/CharSequence;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/ˈʿ;->ᴵˑ:Landroid/widget/TextView;

    if-ne p1, p0, :cond_3

    iget-object p0, v0, Landroidx/leanback/widget/ʾᵎ;->ﾞᴵ:Ljava/lang/CharSequence;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Landroidx/leanback/widget/ʾᵎ;->ﾞᴵ:Ljava/lang/CharSequence;

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Landroidx/leanback/widget/ʾᵎ;->ʽ:Ljava/lang/CharSequence;

    :cond_3
    return-void
.end method

.method public static ᵔᵢ(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/ˊـ;
    .locals 4

    .prologue
    const-class v0, Lcom/google/android/gms/internal/measurement/ˊـ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˊـ;

    if-nez v1, :cond_1

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {p0, v1}, Lʼ/ᵎﹶ;->ٴﹶ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/ˊـ;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/ˊـ;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/ˊـ;-><init>(I)V

    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˊـ;

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˊـ;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ـˑ;

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/measurement/ʻˆ;->ﹳٴ:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˊـ;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ـˑ;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "GservicesLoader"

    const-string v2, "Unable to register Gservices content observer"

    nop

    :cond_2
    :goto_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized ﾞʻ()V
    .locals 4

    .prologue
    const-class v0, Lcom/google/android/gms/internal/measurement/ˊـ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˊـ;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ـˑ;

    if-eqz v3, :cond_0

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˊـ;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ـˑ;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˊـ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{numRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public ʼˎ(Lˏـ/ﾞʻ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ʽ(Landroid/view/View;)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/app/ﹳٴ;

    iget-object p1, p1, Landroidx/leanback/app/ﹳٴ;->ﹳٴ:Landroidx/leanback/app/ʽ;

    invoke-virtual {p1, v0}, Landroidx/leanback/app/ʽ;->ˆˑ(Z)V

    :cond_0
    return-void
.end method

.method public ˆʾ(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ʽᐧ;->ﹳٴ()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ʽᐧ;->ⁱˊ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/ˏי;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    check-cast v0, Ljava/lang/String;

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    const-string v2, "Unable to read GServices for: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "GservicesLoader"

    nop

    :cond_1
    :goto_2
    return-object v1
.end method

.method public ˈ(Landroidx/leanback/widget/ˊʻ;Landroid/widget/TextView;)V
    .locals 11

    .prologue
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ˊʻ;->ᵔʾ(Landroid/widget/TextView;)Landroidx/leanback/widget/ˈʿ;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/ˊـ;->ᵎﹶ(Landroidx/leanback/widget/ˈʿ;Landroid/widget/TextView;)V

    iget-object v1, p1, Landroidx/leanback/widget/ˊʻ;->ٴﹶ:Landroidx/leanback/widget/ᴵᵔ;

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    invoke-interface {v1, v2}, Landroidx/leanback/widget/ᴵᵔ;->ﹳٴ(Landroidx/leanback/widget/ʾᵎ;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/app/ﹳٴ;

    iget-object v2, v0, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    iget-object v1, v1, Landroidx/leanback/app/ﹳٴ;->ﹳٴ:Landroidx/leanback/app/ʽ;

    invoke-virtual {v1, v2}, Landroidx/leanback/app/ʽ;->ˏⁱ(Landroidx/leanback/widget/ʾᵎ;)J

    move-result-wide v1

    iget-object v3, p1, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroidx/leanback/widget/ˑٴ;->ᵎﹶ(Landroidx/leanback/widget/ˈʿ;ZZ)V

    const-wide/16 v6, -0x3

    cmp-long v3, v1, v6

    if-eqz v3, :cond_b

    iget-object v3, v0, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    iget-wide v6, v3, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    cmp-long v6, v1, v6

    if-eqz v6, :cond_b

    const-wide/16 v6, -0x2

    cmp-long v6, v1, v6

    if-nez v6, :cond_2

    iget-object v7, p1, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-interface {v7, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    goto/16 :goto_7

    :cond_1
    add-int/2addr v3, v5

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    iget-object v7, p1, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v6, :cond_4

    :goto_1
    if-ge v3, v8, :cond_5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/leanback/widget/ʾᵎ;

    iget v9, v9, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    const/16 v10, 0x20

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v3, v8, :cond_5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/leanback/widget/ʾᵎ;

    iget-wide v9, v9, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    cmp-long v9, v9, v1

    if-eqz v9, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ge v3, v8, :cond_8

    iget-object v1, p1, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    iget-object v1, v1, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->ᵎⁱ(IZ)Lˋˋ/ʼـ;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ˈʿ;

    if-eqz v1, :cond_b

    iget-object p2, v1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget-object v0, v1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    iget v0, v0, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ:I

    if-eq v0, v5, :cond_7

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽ(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_7
    :goto_4
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/ˊـ;->ﾞᴵ(Landroidx/leanback/widget/ˊʻ;Landroidx/leanback/widget/ˈʿ;)V

    return-void

    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move v7, v4

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v9, p1, :cond_9

    iget-object p1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/ˊʻ;

    goto :goto_6

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    :goto_6
    if-nez p1, :cond_2

    :cond_b
    :goto_7
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽ(Landroid/view/View;)V

    iget-object p1, v0, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public ˑﹳ(Landroidx/leanback/widget/ˊʻ;Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ˊʻ;->ᵔʾ(Landroid/widget/TextView;)Landroidx/leanback/widget/ˈʿ;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/ˊـ;->ᵎﹶ(Landroidx/leanback/widget/ˈʿ;Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/app/ﹳٴ;

    iget-object v1, v1, Landroidx/leanback/app/ﹳٴ;->ﹳٴ:Landroidx/leanback/app/ʽ;

    iget-object p1, p1, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroidx/leanback/widget/ˑٴ;->ᵎﹶ(Landroidx/leanback/widget/ˈʿ;ZZ)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽ(Landroid/view/View;)V

    iget-object p1, v0, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public ٴﹶ(Lˏـ/ˉʿ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˏـ/ﾞʻ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0, p1}, Lˏـ/ﾞʻ;->ﹳٴ(Lˏـ/ˉʿ;)V

    goto :goto_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public declared-synchronized ⁱˊ(Ljava/lang/String;)Lﾞʼ/ﹳٴ;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽٴ/ⁱˊ;

    if-nez v0, :cond_0

    new-instance v0, Lʽٴ/ⁱˊ;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    invoke-direct {v0, p1, v1, v2}, Lʽٴ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ﹳٴ(Lⁱⁱ/ʽ;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {p1}, Lⁱⁱ/ʽ;->clear()V

    :cond_3
    return v0
.end method

.method public ﾞᴵ(Landroidx/leanback/widget/ˊʻ;Landroidx/leanback/widget/ˈʿ;)V
    .locals 3

    .prologue
    iget-object p1, p1, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, v0}, Landroidx/leanback/widget/ˑٴ;->ᵎﹶ(Landroidx/leanback/widget/ˈʿ;ZZ)V

    iget p1, p2, Landroidx/leanback/widget/ˈʿ;->ᐧᴵ:I

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroidx/leanback/widget/ˈʿ;->ʿ:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Landroidx/leanback/widget/ˈʿ;->ˉـ:Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    iget-object p2, p2, Landroidx/leanback/widget/ˈʿ;->ᴵˑ:Landroid/widget/TextView;

    :goto_0
    if-eqz p2, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, v1, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    if-nez p1, :cond_4

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/app/ﹳٴ;

    iget-object p1, p1, Landroidx/leanback/app/ﹳٴ;->ﹳٴ:Landroidx/leanback/app/ʽ;

    invoke-virtual {p1, v0}, Landroidx/leanback/app/ʽ;->ˆˑ(Z)V

    :cond_4
    return-void
.end method
