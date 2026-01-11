.class public final Lﹳᵢ/ʼˈ;
.super Lﹳᵢ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public ʼˈ:Lʽⁱ/ᴵˊ;

.field public final ˆﾞ:Lʽⁱ/ﹳᐧ;

.field public ˈʿ:J

.field public final ˉٴ:Lـˊ/ˑﹳ;

.field public ˊˋ:Lـˊ/ᵔﹳ;

.field public ˋᵔ:Z

.field public ˑٴ:Z

.field public final ٴʼ:Lⁱᴵ/ﾞʻ;

.field public final ᵎˊ:Lʻᴵ/יـ;

.field public final ᵎⁱ:Lٴˉ/ﹳٴ;

.field public final ᵔי:I

.field public ᵔٴ:Z


# direct methods
.method public constructor <init>(Lʽⁱ/ᴵˊ;Lـˊ/ˑﹳ;Lٴˉ/ﹳٴ;Lⁱᴵ/ﾞʻ;Lʻᴵ/יـ;ILʽⁱ/ﹳᐧ;)V
    .locals 0

    invoke-direct {p0}, Lﹳᵢ/ﹳٴ;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ʼˈ;->ʼˈ:Lʽⁱ/ᴵˊ;

    iput-object p2, p0, Lﹳᵢ/ʼˈ;->ˉٴ:Lـˊ/ˑﹳ;

    iput-object p3, p0, Lﹳᵢ/ʼˈ;->ᵎⁱ:Lٴˉ/ﹳٴ;

    iput-object p4, p0, Lﹳᵢ/ʼˈ;->ٴʼ:Lⁱᴵ/ﾞʻ;

    iput-object p5, p0, Lﹳᵢ/ʼˈ;->ᵎˊ:Lʻᴵ/יـ;

    iput p6, p0, Lﹳᵢ/ʼˈ;->ᵔי:I

    iput-object p7, p0, Lﹳᵢ/ʼˈ;->ˆﾞ:Lʽⁱ/ﹳᐧ;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lﹳᵢ/ʼˈ;->ᵔٴ:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﹳᵢ/ʼˈ;->ˈʿ:J

    return-void
.end method


# virtual methods
.method public final ʾˋ(JLˊﾞ/ʾˋ;Z)V
    .locals 2

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide p1, p0, Lﹳᵢ/ʼˈ;->ˈʿ:J

    :cond_0
    invoke-interface {p3}, Lˊﾞ/ʾˋ;->ᵔᵢ()Z

    move-result p3

    iget-boolean v0, p0, Lﹳᵢ/ʼˈ;->ᵔٴ:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lﹳᵢ/ʼˈ;->ˈʿ:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lﹳᵢ/ʼˈ;->ˑٴ:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lﹳᵢ/ʼˈ;->ˋᵔ:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lﹳᵢ/ʼˈ;->ˈʿ:J

    iput-boolean p3, p0, Lﹳᵢ/ʼˈ;->ˑٴ:Z

    iput-boolean p4, p0, Lﹳᵢ/ʼˈ;->ˋᵔ:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lﹳᵢ/ʼˈ;->ᵔٴ:Z

    invoke-virtual {p0}, Lﹳᵢ/ʼˈ;->ᵢˏ()V

    return-void
.end method

.method public final ʾᵎ()V
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ʼˈ;->ٴʼ:Lⁱᴵ/ﾞʻ;

    invoke-interface {v0}, Lⁱᴵ/ﾞʻ;->ﹳٴ()V

    return-void
.end method

.method public final ˈ()V
    .locals 0

    return-void
.end method

.method public final ˏי(Lـˊ/ᵔﹳ;)V
    .locals 2

    iput-object p1, p0, Lﹳᵢ/ʼˈ;->ˊˋ:Lـˊ/ᵔﹳ;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ٴᵢ:Lʻʿ/יـ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v1, p0, Lﹳᵢ/ʼˈ;->ٴʼ:Lⁱᴵ/ﾞʻ;

    invoke-interface {v1, p1, v0}, Lⁱᴵ/ﾞʻ;->ʼˎ(Landroid/os/Looper;Lʻʿ/יـ;)V

    invoke-interface {v1}, Lⁱᴵ/ﾞʻ;->ᵔᵢ()V

    invoke-virtual {p0}, Lﹳᵢ/ʼˈ;->ᵢˏ()V

    return-void
.end method

.method public final ˑﹳ(Lﹳᵢ/ʾᵎ;)V
    .locals 7

    .prologue
    check-cast p1, Lﹳᵢ/ˋᵔ;

    iget-boolean v0, p1, Lﹳᵢ/ˋᵔ;->ᴵˑ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lﹳᵢ/ᴵˑ;->ٴﹶ()V

    iget-object v5, v4, Lﹳᵢ/ᴵˑ;->ᵔᵢ:Lⁱᴵ/ﾞᴵ;

    if-eqz v5, :cond_0

    iget-object v6, v4, Lﹳᵢ/ᴵˑ;->ˑﹳ:Lⁱᴵ/ʼˎ;

    invoke-interface {v5, v6}, Lⁱᴵ/ﾞᴵ;->ˈ(Lⁱᴵ/ʼˎ;)V

    iput-object v1, v4, Lﹳᵢ/ᴵˑ;->ᵔᵢ:Lⁱᴵ/ﾞᴵ;

    iput-object v1, v4, Lﹳᵢ/ᴵˑ;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lﹳᵢ/ˋᵔ;->ᵔי:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0, p1}, Lᵔⁱ/ˉʿ;->ˑﹳ(Lᵔⁱ/ﾞʻ;)V

    iget-object v0, p1, Lﹳᵢ/ˋᵔ;->ˋᵔ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p1, Lﹳᵢ/ˋᵔ;->ˊˋ:Lﹳᵢ/ـˆ;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lﹳᵢ/ˋᵔ;->ᵎʻ:Z

    return-void
.end method

.method public final declared-synchronized ᵔʾ(Lʽⁱ/ᴵˊ;)V
    .locals 0

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lﹳᵢ/ʼˈ;->ʼˈ:Lʽⁱ/ᴵˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ᵢˏ()V
    .locals 6

    .prologue
    new-instance v0, Lﹳᵢ/ᐧﾞ;

    iget-wide v1, p0, Lﹳᵢ/ʼˈ;->ˈʿ:J

    iget-boolean v3, p0, Lﹳᵢ/ʼˈ;->ˑٴ:Z

    iget-boolean v4, p0, Lﹳᵢ/ʼˈ;->ˋᵔ:Z

    invoke-virtual {p0}, Lﹳᵢ/ʼˈ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lﹳᵢ/ᐧﾞ;-><init>(JZZLʽⁱ/ᴵˊ;)V

    iget-boolean v1, p0, Lﹳᵢ/ʼˈ;->ᵔٴ:Z

    if-eqz v1, :cond_0

    new-instance v1, Lˈـ/ˏי;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lˈـ/ˏי;-><init>(Lʽⁱ/ʼˈ;I)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lﹳᵢ/ﹳٴ;->ʻٴ(Lʽⁱ/ʼˈ;)V

    return-void
.end method

.method public final ⁱˊ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/ʾᵎ;
    .locals 15

    .prologue
    iget-object v0, p0, Lﹳᵢ/ʼˈ;->ˉٴ:Lـˊ/ˑﹳ;

    invoke-interface {v0}, Lـˊ/ˑﹳ;->ˆʾ()Lـˊ/ﾞᴵ;

    move-result-object v2

    iget-object v0, p0, Lﹳᵢ/ʼˈ;->ˊˋ:Lـˊ/ᵔﹳ;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Lـˊ/ﾞᴵ;->ˉʿ(Lـˊ/ᵔﹳ;)V

    :cond_0
    invoke-virtual {p0}, Lﹳᵢ/ʼˈ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v0

    iget-object v0, v0, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lﹳᵢ/ˋᵔ;

    move-object v3, v1

    iget-object v1, v0, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    iget-object v4, p0, Lﹳᵢ/ﹳٴ;->ٴᵢ:Lʻʿ/יـ;

    invoke-static {v4}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v4, p0, Lﹳᵢ/ʼˈ;->ᵎⁱ:Lٴˉ/ﹳٴ;

    iget-object v4, v4, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Lˊﾞ/ﹳᐧ;

    move-object v5, v3

    new-instance v3, Lˑי/ʽ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    move-object v4, v5

    new-instance v5, Lⁱᴵ/ʼˎ;

    iget-object v6, p0, Lﹳᵢ/ﹳٴ;->ˈٴ:Lⁱᴵ/ʼˎ;

    iget-object v6, v6, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct {v5, v6, v7, v9}, Lⁱᴵ/ʼˎ;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILﹳᵢ/ᵢˏ;)V

    invoke-virtual/range {p0 .. p1}, Lﹳᵢ/ﹳٴ;->ᵔﹳ(Lﹳᵢ/ᵢˏ;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v7

    iget-wide v9, v0, Lʽⁱ/ʼʼ;->ˑﹳ:J

    invoke-static {v9, v10}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v12

    const/4 v14, 0x0

    move-object v0, v4

    iget-object v4, p0, Lﹳᵢ/ʼˈ;->ٴʼ:Lⁱᴵ/ﾞʻ;

    iget-object v6, p0, Lﹳᵢ/ʼˈ;->ᵎˊ:Lʻᴵ/יـ;

    iget v10, p0, Lﹳᵢ/ʼˈ;->ᵔי:I

    iget-object v11, p0, Lﹳᵢ/ʼˈ;->ˆﾞ:Lʽⁱ/ﹳᐧ;

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v14}, Lﹳᵢ/ˋᵔ;-><init>(Landroid/net/Uri;Lـˊ/ﾞᴵ;Lˑי/ʽ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;Lʻᴵ/יـ;Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ʼˈ;Lᵔⁱ/ˑﹳ;ILʽⁱ/ﹳᐧ;JLٴʿ/ﹳٴ;)V

    return-object v0
.end method

.method public final declared-synchronized ﹳٴ()Lʽⁱ/ᴵˊ;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lﹳᵢ/ʼˈ;->ʼˈ:Lʽⁱ/ᴵˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
