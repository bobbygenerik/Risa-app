.class public abstract Lᵔᵢ/ˆʾ;
.super Lʽ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᵔᵢ/ٴﹶ;
.implements Lˊʻ/ﹳٴ;


# instance fields
.field public final ʼˈ:Lˉˆ/ʿ;

.field public ˈⁱ:Z

.field public ˉـ:Lᵔᵢ/ᵢˏ;

.field public final ـˏ:Landroidx/lifecycle/ـˆ;

.field public ᴵˑ:Z

.field public ﹳـ:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lʽ/ٴﹶ;-><init>()V

    new-instance v0, Lˑʼ/ٴᵢ;

    invoke-direct {v0, p0}, Lˑʼ/ٴᵢ;-><init>(Lᵔᵢ/ˆʾ;)V

    new-instance v1, Lˉˆ/ʿ;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    new-instance v0, Landroidx/lifecycle/ـˆ;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ـˆ;-><init>(Landroidx/lifecycle/ʽﹳ;)V

    iput-object v0, p0, Lᵔᵢ/ˆʾ;->ـˏ:Landroidx/lifecycle/ـˆ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔᵢ/ˆʾ;->ᴵˑ:Z

    iget-object v0, p0, Lʽ/ٴﹶ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵎˊ;

    new-instance v1, Lʽ/ˈ;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lʽ/ˈ;-><init>(ILjava/lang/Object;)V

    const-string v2, "android:support:lifecycle"

    invoke-virtual {v0, v2, v1}, Lˑʼ/ᵎˊ;->ˊˋ(Ljava/lang/String;Lᵎ/ˈ;)V

    new-instance v0, Lˑʼ/ˊʻ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lˑʼ/ˊʻ;-><init>(Lᵔᵢ/ˆʾ;I)V

    invoke-virtual {p0, v0}, Lʽ/ٴﹶ;->ʽ(Lˑٴ/ﹳٴ;)V

    new-instance v0, Lˑʼ/ˊʻ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lˑʼ/ˊʻ;-><init>(Lᵔᵢ/ˆʾ;I)V

    iget-object v1, p0, Lʽ/ٴﹶ;->ᵔٴ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lʽ/ˑﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lʽ/ˑﹳ;-><init>(Lʽ/ٴﹶ;I)V

    invoke-virtual {p0, v0}, Lʽ/ٴﹶ;->ˈ(Lˈ/ﹳٴ;)V

    iget-object v0, p0, Lʽ/ٴﹶ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵎˊ;

    new-instance v1, Lᵎ/ﹳٴ;

    invoke-direct {v1, p0}, Lᵎ/ﹳٴ;-><init>(Lᵔᵢ/ˆʾ;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Lˑʼ/ᵎˊ;->ˊˋ(Ljava/lang/String;Lᵎ/ˈ;)V

    new-instance v0, Lᵔᵢ/ʼˎ;

    invoke-direct {v0, p0}, Lᵔᵢ/ʼˎ;-><init>(Lᵔᵢ/ˆʾ;)V

    invoke-virtual {p0, v0}, Lʽ/ٴﹶ;->ˈ(Lˈ/ﹳٴ;)V

    return-void
.end method

.method public static ﾞʻ(Lˑʼ/ʿ;)Z
    .locals 7

    .prologue
    iget-object p0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {p0}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ᴵᵔ;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ˉـ()Lˑʼ/ʿ;

    move-result-object v2

    invoke-static {v2}, Lᵔᵢ/ˆʾ;->ﾞʻ(Lˑʼ/ʿ;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_3
    iget-object v2, v1, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    const-string v3, "setCurrentState"

    sget-object v4, Landroidx/lifecycle/ᵔʾ;->ʽʽ:Landroidx/lifecycle/ᵔʾ;

    const/4 v5, 0x1

    sget-object v6, Landroidx/lifecycle/ᵔʾ;->ˈٴ:Landroidx/lifecycle/ᵔʾ;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lˑʼ/ٴﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v2

    iget-object v2, v2, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v2, v6}, Landroidx/lifecycle/ᵔʾ;->ﹳٴ(Landroidx/lifecycle/ᵔʾ;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    iget-object v0, v0, Lˑʼ/ٴﹳ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ـˆ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/ـˆ;->ˑﹳ(Landroidx/lifecycle/ᵔʾ;)V

    move v0, v5

    :cond_4
    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    iget-object v2, v2, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v2, v6}, Landroidx/lifecycle/ᵔʾ;->ﹳٴ(Landroidx/lifecycle/ᵔʾ;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ـˆ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/ـˆ;->ˑﹳ(Landroidx/lifecycle/ᵔʾ;)V

    move v0, v5

    goto :goto_0

    :cond_5
    return v0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0}, Lʽ/ٴﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʻٴ()V

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ˆﾞ:Lᵔᵢ/ʻٴ;

    iget-object p2, v0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lᵔᵢ/ʻٴ;->ﹳٴ(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 9

    .prologue
    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lᵔᵢ/ᵢˏ;->ـᵎ:Z

    iget v2, v0, Lᵔᵢ/ᵢˏ;->ʾˊ:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Lᵔᵢ/ᵔʾ;->ᴵˊ:I

    :goto_0
    invoke-virtual {v0, p1, v2}, Lᵔᵢ/ᵢˏ;->ʽʽ(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1}, Lᵔᵢ/ᵔʾ;->ʽ(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Lᵔᵢ/ᵔʾ;->ʽ(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_2

    sget-boolean v2, Lᵔᵢ/ᵔʾ;->ˊʻ:Z

    if-nez v2, :cond_7

    sget-object v2, Lᵔᵢ/ᵔʾ;->ʾˋ:Lʼﾞ/ˈʿ;

    new-instance v3, Lʻʻ/ᵎﹶ;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v4}, Lʻʻ/ᵎﹶ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Lʼﾞ/ˈʿ;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_2
    sget-object v2, Lᵔᵢ/ᵔʾ;->ᵎⁱ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lᵔᵢ/ᵔʾ;->ʽʽ:Lˆﾞ/ʽ;

    if-nez v3, :cond_5

    sget-object v3, Lᵔᵢ/ᵔʾ;->ˈٴ:Lˆﾞ/ʽ;

    if-nez v3, :cond_3

    invoke-static {p1}, Lˊʻ/ˈ;->ˑﹳ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lˆﾞ/ʽ;->ⁱˊ(Ljava/lang/String;)Lˆﾞ/ʽ;

    move-result-object v3

    sput-object v3, Lᵔᵢ/ᵔʾ;->ˈٴ:Lˆﾞ/ʽ;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    sget-object v3, Lᵔᵢ/ᵔʾ;->ˈٴ:Lˆﾞ/ʽ;

    iget-object v3, v3, Lˆﾞ/ʽ;->ﹳٴ:Lˆﾞ/ˑﹳ;

    invoke-interface {v3}, Lˆﾞ/ˑﹳ;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    monitor-exit v2

    goto :goto_4

    :cond_4
    sget-object v3, Lᵔᵢ/ᵔʾ;->ˈٴ:Lˆﾞ/ʽ;

    sput-object v3, Lᵔᵢ/ᵔʾ;->ʽʽ:Lˆﾞ/ʽ;

    goto :goto_2

    :cond_5
    sget-object v4, Lᵔᵢ/ᵔʾ;->ˈٴ:Lˆﾞ/ʽ;

    invoke-virtual {v3, v4}, Lˆﾞ/ʽ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lᵔᵢ/ᵔʾ;->ʽʽ:Lˆﾞ/ʽ;

    sput-object v3, Lᵔᵢ/ᵔʾ;->ˈٴ:Lˆﾞ/ʽ;

    iget-object v3, v3, Lˆﾞ/ʽ;->ﹳٴ:Lˆﾞ/ˑﹳ;

    invoke-interface {v3}, Lˆﾞ/ˑﹳ;->ﹳٴ()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lˊʻ/ˈ;->ˈ(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_2
    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    :goto_4
    invoke-static {p1}, Lᵔᵢ/ᵢˏ;->ˉˆ(Landroid/content/Context;)Lˆﾞ/ʽ;

    move-result-object v2

    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    invoke-static {p1, v0, v2, v5, v4}, Lᵔᵢ/ᵢˏ;->יـ(Landroid/content/Context;ILˆﾞ/ʽ;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_1
    move-object v6, p1

    check-cast v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    :cond_8
    instance-of v3, p1, Lˉʿ/ʽ;

    if-eqz v3, :cond_9

    invoke-static {p1, v0, v2, v5, v4}, Lᵔᵢ/ᵢˏ;->יـ(Landroid/content/Context;ILˆﾞ/ʽ;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_2
    move-object v4, p1

    check-cast v4, Lˉʿ/ʽ;

    invoke-virtual {v4, v3}, Lˉʿ/ʽ;->ﹳٴ(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    :catch_1
    :cond_9
    sget-boolean v3, Lᵔᵢ/ᵢˏ;->ـᵢ:Z

    if-nez v3, :cond_a

    goto/16 :goto_7

    :cond_a
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    const/4 v4, -0x1

    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    iput v7, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_21

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput v4, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_6

    :cond_b
    iget v4, v3, Landroid/content/res/Configuration;->fontScale:F

    iget v7, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_c

    iput v7, v5, Landroid/content/res/Configuration;->fontScale:F

    :cond_c
    iget v4, v3, Landroid/content/res/Configuration;->mcc:I

    iget v7, v6, Landroid/content/res/Configuration;->mcc:I

    if-eq v4, v7, :cond_d

    iput v7, v5, Landroid/content/res/Configuration;->mcc:I

    :cond_d
    iget v4, v3, Landroid/content/res/Configuration;->mnc:I

    iget v7, v6, Landroid/content/res/Configuration;->mnc:I

    if-eq v4, v7, :cond_e

    iput v7, v5, Landroid/content/res/Configuration;->mnc:I

    :cond_e
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v4, v7, :cond_f

    invoke-static {v3, v6, v5}, Lᵔᵢ/ˏי;->ﹳٴ(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_5

    :cond_f
    iget-object v7, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v7, v8}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v7, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_10
    :goto_5
    iget v7, v3, Landroid/content/res/Configuration;->touchscreen:I

    iget v8, v6, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v7, v8, :cond_11

    iput v8, v5, Landroid/content/res/Configuration;->touchscreen:I

    :cond_11
    iget v7, v3, Landroid/content/res/Configuration;->keyboard:I

    iget v8, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v7, v8, :cond_12

    iput v8, v5, Landroid/content/res/Configuration;->keyboard:I

    :cond_12
    iget v7, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v8, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v7, v8, :cond_13

    iput v8, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_13
    iget v7, v3, Landroid/content/res/Configuration;->navigation:I

    iget v8, v6, Landroid/content/res/Configuration;->navigation:I

    if-eq v7, v8, :cond_14

    iput v8, v5, Landroid/content/res/Configuration;->navigation:I

    :cond_14
    iget v7, v3, Landroid/content/res/Configuration;->navigationHidden:I

    iget v8, v6, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v7, v8, :cond_15

    iput v8, v5, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_15
    iget v7, v3, Landroid/content/res/Configuration;->orientation:I

    iget v8, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v7, v8, :cond_16

    iput v8, v5, Landroid/content/res/Configuration;->orientation:I

    :cond_16
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    if-eq v7, v8, :cond_17

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v7, v8

    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_17
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0xc0

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    if-eq v7, v8, :cond_18

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v7, v8

    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_18
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x30

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0x30

    if-eq v7, v8, :cond_19

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v7, v8

    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_19
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0x300

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0x300

    if-eq v7, v8, :cond_1a

    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v7, v8

    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_1a
    const/16 v7, 0x1a

    if-lt v4, v7, :cond_1b

    invoke-static {v3, v6, v5}, Lˑˊ/ﹳٴ;->ʽ(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_1b
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0xf

    if-eq v4, v7, :cond_1c

    iget v4, v5, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->uiMode:I

    :cond_1c
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    if-eq v4, v7, :cond_1d

    iget v4, v5, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->uiMode:I

    :cond_1d
    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v7, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v7, :cond_1e

    iput v7, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_1e
    iget v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v7, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v7, :cond_1f

    iput v7, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_1f
    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v7, :cond_20

    iput v7, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_20
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v4, :cond_21

    iput v4, v5, Landroid/content/res/Configuration;->densityDpi:I

    :cond_21
    :goto_6
    invoke-static {p1, v0, v2, v5, v1}, Lᵔᵢ/ᵢˏ;->יـ(Landroid/content/Context;ILˆﾞ/ʽ;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Lˉʿ/ʽ;

    const v2, 0x7f14031c

    invoke-direct {v1, p1, v2}, Lˉʿ/ʽ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lˉʿ/ʽ;->ﹳٴ(Landroid/content/res/Configuration;)V

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p1, :cond_22

    invoke-virtual {v1}, Lˉʿ/ʽ;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Lˉٴ/ⁱˊ;->ˉʿ(Landroid/content/res/Resources$Theme;)V

    :catch_2
    :cond_22
    move-object p1, v1

    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    invoke-super {p0, p1}, Lˊʻ/ﾞᴵ;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_5

    array-length v1, p4

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p4, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "--autofill"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_5

    goto :goto_0

    :sswitch_1
    const-string v2, "--contentcapture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_5

    goto :goto_0

    :sswitch_2
    const-string v2, "--list-dumpables"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :sswitch_3
    const-string v2, "--dump-dumpable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_5

    goto :goto_0

    :sswitch_4
    const-string v2, "--translation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_5

    :goto_0
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local FragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCreated="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lᵔᵢ/ˆʾ;->ﹳـ:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mResumed="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lᵔᵢ/ˆʾ;->ˈⁱ:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mStopped="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lᵔᵢ/ˆʾ;->ᴵˑ:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Landroidx/lifecycle/ᴵʼ;->ᵔי()Landroidx/lifecycle/ˏᵢ;

    move-result-object v2

    sget-object v3, Lʼـ/ﹳٴ;->ⁱˊ:Lʼـ/ﹳٴ;

    new-instance v4, Lˏˆ/ﹳٴ;

    sget-object v5, Lיﹳ/ﹳٴ;->ʽ:Landroidx/lifecycle/ˊˋ;

    invoke-direct {v4, v2, v5, v3}, Lˏˆ/ﹳٴ;-><init>(Landroidx/lifecycle/ˏᵢ;Landroidx/lifecycle/ᐧᴵ;Lʼـ/ʽ;)V

    const-class v2, Lיﹳ/ﹳٴ;

    invoke-static {v2}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v2

    invoke-virtual {v2}, Lˊʼ/ﾞᴵ;->ⁱˊ()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v5, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lˏˆ/ﹳٴ;->ᵢˏ(Lˊʼ/ﾞᴵ;Ljava/lang/String;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object v2

    check-cast v2, Lיﹳ/ﹳٴ;

    iget-object v2, v2, Lיﹳ/ﹳٴ;->ⁱˊ:Lיـ/יـ;

    iget v3, v2, Lיـ/יـ;->ʽʽ:I

    if-lez v3, :cond_9

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v3, v2, Lיـ/יـ;->ʽʽ:I

    if-gtz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v0}, Lיـ/יـ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, v2, Lיـ/יـ;->ʾˋ:[I

    aget p1, p1, v0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_2
    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ٴᵢ;

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lˑʼ/ʿ;->ـˆ(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʻٴ()V

    iget-object v0, v0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ˑٴ:Lˉʿ/ᵔᵢ;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    new-instance v1, Lˉʿ/ᵔᵢ;

    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lᵔᵢ/ᵎⁱ;->ᵎᵔ()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v2}, Lˉʿ/ᵔᵢ;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lᵔᵢ/ᵢˏ;->ˑٴ:Lˉʿ/ᵔᵢ;

    :cond_1
    iget-object v0, v0, Lᵔᵢ/ᵢˏ;->ˑٴ:Lˉʿ/ᵔᵢ;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    sget v0, Lˉˆ/ᵢʻ;->ﹳٴ:I

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final invalidateOptionsMenu()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lᵔᵢ/ᵢˏ;->ᴵˊ(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    invoke-virtual {v0}, Lˉˆ/ʿ;->ᵔٴ()V

    invoke-super {p0, p1, p2, p3}, Lʽ/ٴﹶ;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    invoke-super {p0, p1}, Lʽ/ٴﹶ;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object p1

    check-cast p1, Lᵔᵢ/ᵢˏ;

    iget-boolean v0, p1, Lᵔᵢ/ᵢˏ;->ˊᵔ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lᵔᵢ/ᵢˏ;->ᵎᵔ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object v0, p1, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lᵔᵢ/ᵎⁱ;->ᵎﹶ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lᵔᵢ/ᵎⁱ;->ˏᵢ(Z)V

    :cond_0
    invoke-static {}, Lˉˆ/ˏי;->ﹳٴ()Lˉˆ/ˏי;

    move-result-object v0

    iget-object v1, p1, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lˉˆ/ˏי;->ﹳٴ:Lˉˆ/ʼᵢ;

    invoke-virtual {v2, v1}, Lˉˆ/ʼᵢ;->ﾞʻ(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p1, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p1, Lᵔᵢ/ᵢˏ;->י:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lᵔᵢ/ᵢˏ;->ˉʿ(ZZ)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lʽ/ٴﹶ;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lᵔᵢ/ˆʾ;->ـˏ:Landroidx/lifecycle/ـˆ;

    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    iget-object p1, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    iget-object p1, p1, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˑʼ/ٴᵢ;

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lˑʼ/ʿ;->ᵎⁱ:Z

    iput-boolean v0, p1, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v1, p1, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v0, v1, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lˑʼ/ʿ;->ʽﹳ(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ٴᵢ;

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    iget-object v0, v0, Lˑʼ/ʿ;->ﾞᴵ:Lˑʼ/ٴʼ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lˑʼ/ٴʼ;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .prologue
    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ٴᵢ;

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    iget-object v0, v0, Lˑʼ/ʿ;->ﾞᴵ:Lˑʼ/ٴʼ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lˑʼ/ٴʼ;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˉʿ()V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0}, Lᵔᵢ/ᵔʾ;->ﾞᴵ()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    .prologue
    invoke-virtual {p0, p1, p2}, Lᵔᵢ/ˆʾ;->ᵔʾ(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object p1

    check-cast p1, Lᵔᵢ/ᵢˏ;

    invoke-virtual {p1}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object p1, p1, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_7

    if-eqz p1, :cond_7

    iget-object p1, p1, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    iget p1, p1, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_7

    invoke-static {p0}, Lˊʻ/ˈ;->ﹳٴ(Lᵔᵢ/ˆʾ;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lˊʻ/ˈ;->ﹳٴ(Lᵔᵢ/ˆʾ;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lˊʻ/ˈ;->ﹳٴ(Lᵔᵢ/ˆʾ;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :try_start_0
    invoke-static {p0, v1}, Lˊʻ/ˈ;->ⁱˊ(Lᵔᵢ/ˆʾ;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, Lˊʻ/ˈ;->ⁱˊ(Lᵔᵢ/ˆʾ;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :goto_1
    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    nop

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    new-array p2, v2, [Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    aget-object v1, p1, v2

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    return v0

    :cond_7
    return v2
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lᵔᵢ/ˆʾ;->ˈⁱ:Z

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ٴᵢ;

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lˑʼ/ʿ;->ʽﹳ(I)V

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ـˏ:Landroidx/lifecycle/ـˆ;

    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_PAUSE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object p1

    check-cast p1, Lᵔᵢ/ᵢˏ;

    invoke-virtual {p1}, Lᵔᵢ/ᵢˏ;->ʻٴ()V

    return-void
.end method

.method public final onPostResume()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˉˆ()V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object v0, v0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lᵔᵢ/ᵎⁱ;->ᵢˏ:Z

    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    invoke-virtual {v0}, Lˉˆ/ʿ;->ᵔٴ()V

    invoke-super {p0, p1, p2, p3}, Lʽ/ٴﹶ;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    invoke-virtual {v0}, Lˉˆ/ʿ;->ᵔٴ()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lᵔᵢ/ˆʾ;->ˈⁱ:Z

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ٴᵢ;

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    invoke-virtual {v0, v1}, Lˑʼ/ʿ;->ʾˋ(Z)Z

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ʼᐧ()V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lᵔᵢ/ᵢˏ;->ˉʿ(ZZ)Z

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    invoke-virtual {v0}, Lˉˆ/ʿ;->ᵔٴ()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ᵔﹳ()V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object v0, v0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lᵔᵢ/ᵎⁱ;->ᵢˏ:Z

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ʼʼ:Lˉʿ/ˆʾ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˉʿ/ˆʾ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object p2

    invoke-virtual {p2, p1}, Lᵔᵢ/ᵔʾ;->ﾞʻ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lʽ/ٴﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lᵔᵢ/ᵔʾ;->ʼˎ(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lʽ/ٴﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lᵔᵢ/ᵔʾ;->ˆʾ(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lʽ/ٴﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lᵔᵢ/ᵔʾ;->ٴﹶ(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    iput p1, v0, Lᵔᵢ/ᵢˏ;->ˑ:I

    return-void
.end method

.method public final ʼᐧ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    invoke-virtual {v0}, Lˉˆ/ʿ;->ᵔٴ()V

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ٴᵢ;

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lᵔᵢ/ˆʾ;->ᴵˑ:Z

    iget-boolean v2, p0, Lᵔᵢ/ˆʾ;->ﹳـ:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lᵔᵢ/ˆʾ;->ﹳـ:Z

    iget-object v2, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    iput-boolean v1, v2, Lˑʼ/ʿ;->ᵎⁱ:Z

    iput-boolean v1, v2, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v4, v2, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v1, v4, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lˑʼ/ʿ;->ʽﹳ(I)V

    :cond_0
    iget-object v2, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    invoke-virtual {v2, v3}, Lˑʼ/ʿ;->ʾˋ(Z)Z

    iget-object v2, p0, Lᵔᵢ/ˆʾ;->ـˏ:Landroidx/lifecycle/ـˆ;

    sget-object v3, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    iput-boolean v1, v0, Lˑʼ/ʿ;->ᵎⁱ:Z

    iput-boolean v1, v0, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v2, v0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v1, v2, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lˑʼ/ʿ;->ʽﹳ(I)V

    return-void
.end method

.method public final ˆʾ()Lᵔᵢ/ᵔʾ;
    .locals 2

    .prologue
    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ˉـ:Lᵔᵢ/ᵢˏ;

    if-nez v0, :cond_0

    sget-object v0, Lᵔᵢ/ᵔʾ;->ʾˋ:Lʼﾞ/ˈʿ;

    new-instance v0, Lᵔᵢ/ᵢˏ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p0}, Lᵔᵢ/ᵢˏ;-><init>(Landroid/content/Context;Landroid/view/Window;Lᵔᵢ/ٴﹶ;Ljava/lang/Object;)V

    iput-object v0, p0, Lᵔᵢ/ˆʾ;->ˉـ:Lᵔᵢ/ᵢˏ;

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ˉـ:Lᵔᵢ/ᵢˏ;

    return-object v0
.end method

.method public final ˉʿ()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ٴᵢ;

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ﾞʻ()V

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ـˏ:Landroidx/lifecycle/ـˆ;

    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public final ˉˆ()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ـˏ:Landroidx/lifecycle/ـˆ;

    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_RESUME:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ٴᵢ;

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lˑʼ/ʿ;->ᵎⁱ:Z

    iput-boolean v1, v0, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v2, v0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v1, v2, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lˑʼ/ʿ;->ʽﹳ(I)V

    return-void
.end method

.method public final ٴﹶ()Lˑʼ/ʿ;
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ٴᵢ;

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    return-object v0
.end method

.method public final ᵔʾ(ILandroid/view/MenuItem;)Z
    .locals 0

    .prologue
    invoke-super {p0, p1, p2}, Lʽ/ٴﹶ;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    iget-object p1, p1, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˑʼ/ٴᵢ;

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    invoke-virtual {p1}, Lˑʼ/ʿ;->ˆʾ()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ᵔﹳ()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔᵢ/ˆʾ;->ᴵˑ:Z

    :cond_0
    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ٴﹶ()Lˑʼ/ʿ;

    move-result-object v1

    invoke-static {v1}, Lᵔᵢ/ˆʾ;->ﾞʻ(Lˑʼ/ʿ;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    iget-object v1, v1, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˑʼ/ٴᵢ;

    iget-object v1, v1, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    iput-boolean v0, v1, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v2, v1, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v0, v2, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lˑʼ/ʿ;->ʽﹳ(I)V

    iget-object v0, p0, Lᵔᵢ/ˆʾ;->ـˏ:Landroidx/lifecycle/ـˆ;

    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method
