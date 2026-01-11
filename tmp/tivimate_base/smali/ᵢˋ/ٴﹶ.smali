.class public final Lᵢˋ/ٴﹶ;
.super Lᵢˋ/ˑﹳ;
.source "SourceFile"


# instance fields
.field public volatile ˆﾞ:Z

.field public final ٴʼ:Lᵢˋ/ˈ;

.field public ᵎˊ:Lـʾ/ᵔﹳ;

.field public ᵔי:J


# direct methods
.method public constructor <init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Lʽⁱ/ﹳᐧ;ILjava/lang/Object;Lᵢˋ/ˈ;)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lᵢˋ/ˑﹳ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    move-object/from16 p1, p6

    iput-object p1, p0, Lᵢˋ/ٴﹶ;->ٴʼ:Lᵢˋ/ˈ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 7

    .prologue
    iget-wide v0, p0, Lᵢˋ/ٴﹶ;->ᵔי:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v1, p0, Lᵢˋ/ٴﹶ;->ٴʼ:Lᵢˋ/ˈ;

    iget-object v2, p0, Lᵢˋ/ٴﹶ;->ᵎˊ:Lـʾ/ᵔﹳ;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v1 .. v6}, Lᵢˋ/ˈ;->ﹳٴ(Lـʾ/ᵔﹳ;JJ)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lᵢˋ/ˑﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    iget-wide v1, p0, Lᵢˋ/ٴﹶ;->ᵔי:J

    invoke-virtual {v0, v1, v2}, Lـˊ/ᵔᵢ;->ʽ(J)Lـˊ/ᵔᵢ;

    move-result-object v0

    new-instance v1, Lˊﾞ/ﾞʻ;

    iget-object v2, p0, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iget-wide v3, v0, Lـˊ/ᵔᵢ;->ˑﹳ:J

    invoke-virtual {v2, v0}, Lـˊ/ʼᐧ;->ʽʽ(Lـˊ/ᵔᵢ;)J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lˊﾞ/ﾞʻ;-><init>(Lʽⁱ/ˆʾ;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lᵢˋ/ٴﹶ;->ˆﾞ:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lᵢˋ/ٴﹶ;->ٴʼ:Lᵢˋ/ˈ;

    iget-object v0, v0, Lᵢˋ/ˈ;->ʾˋ:Lˊﾞ/ˉˆ;

    sget-object v2, Lᵢˋ/ˈ;->ٴʼ:Lʽⁱ/ˏי;

    invoke-interface {v0, v1, v2}, Lˊﾞ/ˉˆ;->ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-static {v4}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :try_start_2
    iget-wide v0, v1, Lˊﾞ/ﾞʻ;->ˈٴ:J

    iget-object v2, p0, Lᵢˋ/ˑﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    iget-wide v2, v2, Lـˊ/ᵔᵢ;->ˑﹳ:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lᵢˋ/ٴﹶ;->ᵔי:J

    iget-object v0, p0, Lᵢˋ/ٴﹶ;->ٴʼ:Lᵢˋ/ˈ;

    iget-object v0, v0, Lᵢˋ/ˈ;->ˉٴ:Lˊﾞ/ʾˋ;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    invoke-static {v0}, Lˈˆ/ﾞᴵ;->ﾞᴵ(Lـˊ/ﾞᴵ;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_2
    :try_start_3
    iget-wide v1, v1, Lˊﾞ/ﾞʻ;->ˈٴ:J

    iget-object v3, p0, Lᵢˋ/ˑﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    iget-wide v3, v3, Lـˊ/ᵔᵢ;->ˑﹳ:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lᵢˋ/ٴﹶ;->ᵔי:J

    iget-object v1, p0, Lᵢˋ/ٴﹶ;->ٴʼ:Lᵢˋ/ˈ;

    iget-object v1, v1, Lᵢˋ/ˈ;->ˉٴ:Lˊﾞ/ʾˋ;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    iget-object v1, p0, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    invoke-static {v1}, Lˈˆ/ﾞᴵ;->ﾞᴵ(Lـˊ/ﾞᴵ;)V

    throw v0
.end method

.method public final ʽﹳ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵢˋ/ٴﹶ;->ˆﾞ:Z

    return-void
.end method
