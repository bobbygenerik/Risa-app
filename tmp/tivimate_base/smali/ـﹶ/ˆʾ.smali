.class public final Lـﹶ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˆʾ:Ljava/lang/Object;

.field public static volatile ٴﹶ:Lـﹶ/ˆʾ;


# instance fields
.field public final ʼˎ:Lـﹶ/ˈ;

.field public volatile ʽ:I

.field public final ˈ:Landroid/os/Handler;

.field public final ˑﹳ:Lـﹶ/ﾞᴵ;

.field public final ᵎﹶ:Lᵎˉ/ⁱˊ;

.field public final ᵔᵢ:I

.field public final ⁱˊ:Lיـ/ﾞᴵ;

.field public final ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final ﾞᴵ:Lـﹶ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lـﹶ/ˆʾ;->ˆʾ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lـﹶ/ﹳᐧ;)V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x3

    iput v1, p0, Lـﹶ/ˆʾ;->ʽ:I

    iget-object v1, p1, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lـﹶ/ʼˎ;

    iput-object v1, p0, Lـﹶ/ˆʾ;->ﾞᴵ:Lـﹶ/ʼˎ;

    iget v2, p1, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    iput v2, p0, Lـﹶ/ˆʾ;->ᵔᵢ:I

    iget-object p1, p1, Lʼﾞ/ᵎⁱ;->ʽ:Ljava/lang/Object;

    check-cast p1, Lـﹶ/ˈ;

    iput-object p1, p0, Lـﹶ/ˆʾ;->ʼˎ:Lـﹶ/ˈ;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lـﹶ/ˆʾ;->ˈ:Landroid/os/Handler;

    new-instance p1, Lיـ/ﾞᴵ;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Lיـ/ﾞᴵ;-><init>(I)V

    iput-object p1, p0, Lـﹶ/ˆʾ;->ⁱˊ:Lיـ/ﾞᴵ;

    new-instance p1, Lᵎˉ/ⁱˊ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـﹶ/ˆʾ;->ᵎﹶ:Lᵎˉ/ⁱˊ;

    new-instance p1, Lـﹶ/ﾞᴵ;

    invoke-direct {p1, p0}, Lـﹶ/ﾞᴵ;-><init>(Lـﹶ/ˆʾ;)V

    iput-object p1, p0, Lـﹶ/ˆʾ;->ˑﹳ:Lـﹶ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v2, :cond_0

    :try_start_0
    iput v3, p0, Lـﹶ/ˆʾ;->ʽ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lـﹶ/ˆʾ;->ⁱˊ()I

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Lـﹶ/ˑﹳ;

    invoke-direct {v0, p1}, Lـﹶ/ˑﹳ;-><init>(Lـﹶ/ﾞᴵ;)V

    invoke-interface {v1, v0}, Lـﹶ/ʼˎ;->ﹳٴ(Lˉᵎ/ⁱˊ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Lـﹶ/ˆʾ;->ˈ(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static ﹳٴ()Lـﹶ/ˆʾ;
    .locals 4

    .prologue
    sget-object v0, Lـﹶ/ˆʾ;->ˆʾ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lـﹶ/ˆʾ;->ٴﹶ:Lـﹶ/ˆʾ;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    if-eqz v2, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final ʽ()V
    .locals 3

    .prologue
    iget v0, p0, Lـﹶ/ˆʾ;->ᵔᵢ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lـﹶ/ˆʾ;->ⁱˊ()I

    move-result v0

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lـﹶ/ˆʾ;->ʽ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    iget-object v0, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iput v1, p0, Lـﹶ/ˆʾ;->ʽ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lـﹶ/ˆʾ;->ˑﹳ:Lـﹶ/ﾞᴵ;

    iget-object v1, v0, Lـﹶ/ﾞᴵ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lـﹶ/ˆʾ;

    :try_start_2
    new-instance v2, Lـﹶ/ˑﹳ;

    invoke-direct {v2, v0}, Lـﹶ/ˑﹳ;-><init>(Lـﹶ/ﾞᴵ;)V

    iget-object v0, v1, Lـﹶ/ˆʾ;->ﾞᴵ:Lـﹶ/ʼˎ;

    invoke-interface {v0, v2}, Lـﹶ/ʼˎ;->ﹳٴ(Lˉᵎ/ⁱˊ;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v0}, Lـﹶ/ˆʾ;->ˈ(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˈ(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Lـﹶ/ˆʾ;->ʽ:I

    iget-object v1, p0, Lـﹶ/ˆʾ;->ⁱˊ:Lיـ/ﾞᴵ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lـﹶ/ˆʾ;->ⁱˊ:Lיـ/ﾞᴵ;

    invoke-virtual {v1}, Lיـ/ﾞᴵ;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Lـﹶ/ˆʾ;->ˈ:Landroid/os/Handler;

    new-instance v2, Landroidx/leanback/widget/ˏᵢ;

    iget v3, p0, Lـﹶ/ˆʾ;->ʽ:I

    invoke-direct {v2, v0, v3, p1}, Landroidx/leanback/widget/ˏᵢ;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final ˑﹳ(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    invoke-virtual {p0}, Lـﹶ/ˆʾ;->ⁱˊ()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_15

    if-ltz p2, :cond_14

    if-ltz p3, :cond_13

    if-gt p2, p3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "start should be <= than end"

    invoke-static {v3, v0}, Lˈˊ/ˉˆ;->ˈ(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt p2, v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    const-string v4, "start should be < than charSequence length"

    invoke-static {v4, v3}, Lˈˊ/ˉˆ;->ˈ(Ljava/lang/String;Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt p3, v3, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    const-string v3, "end should be < than charSequence length"

    invoke-static {v3, v2}, Lˈˊ/ˉˆ;->ˈ(Ljava/lang/String;Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_5

    if-ne p2, p3, :cond_6

    :cond_5
    move-object v4, p1

    goto/16 :goto_c

    :cond_6
    iget-object v2, p0, Lـﹶ/ˆʾ;->ˑﹳ:Lـﹶ/ﾞᴵ;

    iget-object v2, v2, Lـﹶ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lᵢ/ﹳٴ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p1, Lـﹶ/ʽﹳ;

    if-eqz v2, :cond_7

    move-object v4, p1

    check-cast v4, Lـﹶ/ʽﹳ;

    invoke-virtual {v4}, Lـﹶ/ʽﹳ;->ﹳٴ()V

    :cond_7
    const-class v4, Lـﹶ/ـˆ;

    if-nez v2, :cond_9

    :try_start_0
    instance-of v5, p1, Landroid/text/Spannable;

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    instance-of v5, p1, Landroid/text/Spanned;

    if-eqz v5, :cond_a

    move-object v5, p1

    check-cast v5, Landroid/text/Spanned;

    add-int/lit8 v6, p2, -0x1

    add-int/lit8 v7, p3, 0x1

    invoke-interface {v5, v6, v7, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    if-gt v5, p3, :cond_a

    new-instance v0, Lـﹶ/ᵢˏ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Lـﹶ/ᵢˏ;->ʾˋ:Z

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v5, v0, Lـﹶ/ᵢˏ;->ᴵˊ:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_4
    move-object v4, p1

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_4

    :cond_9
    :goto_5
    :try_start_1
    new-instance v0, Lـﹶ/ᵢˏ;

    move-object v5, p1

    check-cast v5, Landroid/text/Spannable;

    invoke-direct {v0, v5}, Lـﹶ/ᵢˏ;-><init>(Landroid/text/Spannable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_a
    :goto_6
    if-eqz v0, :cond_c

    :try_start_2
    iget-object v5, v0, Lـﹶ/ᵢˏ;->ᴵˊ:Landroid/text/Spannable;

    invoke-interface {v5, p2, p3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lـﹶ/ـˆ;

    if-eqz v4, :cond_c

    array-length v5, v4

    if-lez v5, :cond_c

    array-length v5, v4

    :goto_7
    if-ge v1, v5, :cond_c

    aget-object v6, v4, v1

    iget-object v7, v0, Lـﹶ/ᵢˏ;->ᴵˊ:Landroid/text/Spannable;

    invoke-interface {v7, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, v0, Lـﹶ/ᵢˏ;->ᴵˊ:Landroid/text/Spannable;

    invoke-interface {v8, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, p3, :cond_b

    invoke-virtual {v0, v6}, Lـﹶ/ᵢˏ;->removeSpan(Ljava/lang/Object;)V

    :cond_b
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    move v5, p2

    move v6, p3

    if-eq v5, v6, :cond_d

    :try_start_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lt v5, p2, :cond_e

    :cond_d
    move-object v4, p1

    goto :goto_a

    :cond_e
    new-instance v9, Lˑʼ/ᵎˊ;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object p2, v3, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lᵎˉ/ⁱˊ;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 p3, 0x6

    :try_start_5
    invoke-direct {v9, v0, p3, p2}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v8, 0x0

    const v7, 0x7fffffff

    move-object v4, p1

    :try_start_6
    invoke-virtual/range {v3 .. v9}, Lᵢ/ﹳٴ;->יـ(Ljava/lang/CharSequence;IIIZLـﹶ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lـﹶ/ᵢˏ;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lـﹶ/ᵢˏ;->ᴵˊ:Landroid/text/Spannable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_f

    move-object p2, v4

    check-cast p2, Lـﹶ/ʽﹳ;

    invoke-virtual {p2}, Lـﹶ/ʽﹳ;->ⁱˊ()V

    :cond_f
    return-object p1

    :catchall_1
    move-exception v0

    :goto_8
    move-object p2, v0

    goto :goto_b

    :cond_10
    if-eqz v2, :cond_12

    :goto_9
    move-object p1, v4

    check-cast p1, Lـﹶ/ʽﹳ;

    invoke-virtual {p1}, Lـﹶ/ʽﹳ;->ⁱˊ()V

    return-object v4

    :catchall_2
    move-exception v0

    move-object v4, p1

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    move-object p2, p1

    goto :goto_b

    :goto_a
    if-eqz v2, :cond_12

    goto :goto_9

    :goto_b
    if-eqz v2, :cond_11

    move-object p1, v4

    check-cast p1, Lـﹶ/ʽﹳ;

    invoke-virtual {p1}, Lـﹶ/ʽﹳ;->ⁱˊ()V

    :cond_11
    throw p2

    :cond_12
    :goto_c
    return-object v4

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not initialized yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ()I
    .locals 2

    .prologue
    iget-object v0, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lـﹶ/ˆʾ;->ʽ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final ﾞᴵ(Lـﹶ/ᵔᵢ;)V
    .locals 5

    .prologue
    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Lˈˊ/ˉˆ;->ﾞᴵ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lـﹶ/ˆʾ;->ʽ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lـﹶ/ˆʾ;->ʽ:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lـﹶ/ˆʾ;->ⁱˊ:Lיـ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lיـ/ﾞᴵ;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lـﹶ/ˆʾ;->ˈ:Landroid/os/Handler;

    new-instance v2, Landroidx/leanback/widget/ˏᵢ;

    iget v3, p0, Lـﹶ/ˆʾ;->ʽ:I

    new-array v1, v1, [Lـﹶ/ᵔᵢ;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v2, p1, v3, v1}, Landroidx/leanback/widget/ˏᵢ;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p1, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object v0, p0, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
