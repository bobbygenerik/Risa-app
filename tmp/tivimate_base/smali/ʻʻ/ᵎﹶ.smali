.class public final synthetic Lʻʻ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lʻʻ/ᵎﹶ;->ʾˋ:I

    iput-object p1, p0, Lʻʻ/ᵎﹶ;->ᴵˊ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    iget v0, p0, Lʻʻ/ᵎﹶ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-lt v0, v2, :cond_5

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    iget-object v5, p0, Lʻʻ/ᵎﹶ;->ᴵˊ:Landroid/content/Context;

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v4, v1, :cond_5

    const-string v4, "locale"

    if-lt v0, v2, :cond_2

    sget-object v0, Lᵔᵢ/ᵔʾ;->ٴᵢ:Lיـ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lיـ/ﹳٴ;

    invoke-direct {v2, v0}, Lיـ/ﹳٴ;-><init>(Lיـ/ﾞᴵ;)V

    :cond_0
    invoke-virtual {v2}, Lיـ/ﹳٴ;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lיـ/ﹳٴ;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵔʾ;

    if-eqz v0, :cond_0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    iget-object v0, v0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v0}, Lᵔᵢ/ˉʿ;->ﹳٴ(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v2, Lˆﾞ/ʽ;

    new-instance v6, Lˆﾞ/ﾞᴵ;

    invoke-direct {v6, v0}, Lˆﾞ/ﾞᴵ;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v6}, Lˆﾞ/ʽ;-><init>(Lˆﾞ/ˑﹳ;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lᵔᵢ/ᵔʾ;->ʽʽ:Lˆﾞ/ʽ;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lˆﾞ/ʽ;->ⁱˊ:Lˆﾞ/ʽ;

    :goto_1
    iget-object v0, v2, Lˆﾞ/ʽ;->ﹳٴ:Lˆﾞ/ˑﹳ;

    invoke-interface {v0}, Lˆﾞ/ˑﹳ;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v5}, Lˊʻ/ˈ;->ˑﹳ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lᵔᵢ/ﾞʻ;->ﹳٴ(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v2, v0}, Lᵔᵢ/ˉʿ;->ⁱˊ(Ljava/lang/Object;Landroid/os/LocaleList;)V

    :cond_4
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_5
    sput-boolean v1, Lᵔᵢ/ᵔʾ;->ˊʻ:Z

    return-void

    :pswitch_0
    new-instance v0, Lʼᐧ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lʼᐧ/ﹳٴ;-><init>(I)V

    sget-object v1, Lʻʻ/ˑﹳ;->ﹳٴ:Lﹳˋ/ʼˎ;

    const/4 v2, 0x0

    iget-object v3, p0, Lʻʻ/ᵎﹶ;->ᴵˊ:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lʻʻ/ˑﹳ;->ˏי(Landroid/content/Context;Ljava/util/concurrent/Executor;Lʻʻ/ˈ;Z)V

    return-void

    :pswitch_1
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v0, Lʻʻ/ᵎﹶ;

    const/4 v1, 0x1

    iget-object v2, p0, Lʻʻ/ᵎﹶ;->ᴵˊ:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lʻʻ/ᵎﹶ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
