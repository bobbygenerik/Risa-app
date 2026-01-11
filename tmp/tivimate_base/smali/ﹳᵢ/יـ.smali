.class public final Lﹳᵢ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʾᵎ;
.implements Lﹳᵢ/ـˆ;


# instance fields
.field public final ʽʽ:Lᵔⁱ/ˑﹳ;

.field public final ʾˋ:Lﹳᵢ/ᵢˏ;

.field public ˈٴ:Lﹳᵢ/ᴵˊ;

.field public ˊʻ:Lﹳᵢ/ـˆ;

.field public ٴᵢ:J

.field public final ᴵˊ:J

.field public ᴵᵔ:Lﹳᵢ/ʾᵎ;


# direct methods
.method public constructor <init>(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/יـ;->ʾˋ:Lﹳᵢ/ᵢˏ;

    iput-object p2, p0, Lﹳᵢ/יـ;->ʽʽ:Lᵔⁱ/ˑﹳ;

    iput-wide p3, p0, Lﹳᵢ/יـ;->ᴵˊ:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﹳᵢ/יـ;->ٴᵢ:J

    return-void
.end method


# virtual methods
.method public final ʻٴ(J)V
    .locals 2

    iget-object v0, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lﹳᵢ/ʿᵢ;->ʻٴ(J)V

    return-void
.end method

.method public final ʼˎ(Lﹳᵢ/ـˆ;J)V
    .locals 2

    .prologue
    iput-object p1, p0, Lﹳᵢ/יـ;->ˊʻ:Lﹳᵢ/ـˆ;

    iget-object p1, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    if-eqz p1, :cond_1

    iget-wide p2, p0, Lﹳᵢ/יـ;->ٴᵢ:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p2, p0, Lﹳᵢ/יـ;->ᴵˊ:J

    :goto_0
    invoke-interface {p1, p0, p2, p3}, Lﹳᵢ/ʾᵎ;->ʼˎ(Lﹳᵢ/ـˆ;J)V

    :cond_1
    return-void
.end method

.method public final ʼᐧ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lﹳᵢ/ʾᵎ;->ʼᐧ()V

    return-void

    :cond_0
    iget-object v0, p0, Lﹳᵢ/יـ;->ˈٴ:Lﹳᵢ/ᴵˊ;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lﹳᵢ/ᴵˊ;->ˈ()V

    :cond_1
    return-void
.end method

.method public final ˆʾ([Lﹶʽ/ˏי;[Z[Lﹳᵢ/ˉـ;[ZJ)J
    .locals 12

    .prologue
    iget-wide v0, p0, Lﹳᵢ/יـ;->ٴᵢ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lﹳᵢ/יـ;->ᴵˊ:J

    cmp-long v4, p5, v4

    if-nez v4, :cond_0

    move-wide v10, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v10, p5

    :goto_0
    iput-wide v2, p0, Lﹳᵢ/יـ;->ٴᵢ:J

    iget-object v5, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v5 .. v11}, Lﹳᵢ/ʾᵎ;->ˆʾ([Lﹶʽ/ˏי;[Z[Lﹳᵢ/ˉـ;[ZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ˈ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ˈ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˉʿ()J
    .locals 2

    iget-object v0, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0}, Lﹳᵢ/ʾᵎ;->ˉʿ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ˉˆ()J
    .locals 2

    iget-object v0, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ˉˆ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ˏי(J)V
    .locals 2

    iget-object v0, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lﹳᵢ/ʾᵎ;->ˏי(J)V

    return-void
.end method

.method public final ˑﹳ(Lﹳᵢ/ʾᵎ;)V
    .locals 1

    iget-object p1, p0, Lﹳᵢ/יـ;->ˊʻ:Lﹳᵢ/ـˆ;

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {p1, p0}, Lﹳᵢ/ـˆ;->ˑﹳ(Lﹳᵢ/ʾᵎ;)V

    return-void
.end method

.method public final ٴﹶ(Lⁱי/ˉٴ;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lﹳᵢ/ʿᵢ;->ٴﹶ(Lⁱי/ˉٴ;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ᵔʾ()Lﹳᵢ/ʻᵎ;
    .locals 2

    iget-object v0, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0}, Lﹳᵢ/ʾᵎ;->ᵔʾ()Lﹳᵢ/ʻᵎ;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(JLⁱי/ᴵʼ;)J
    .locals 2

    iget-object v0, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3}, Lﹳᵢ/ʾᵎ;->ⁱˊ(JLⁱי/ᴵʼ;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ﹳٴ(Lﹳᵢ/ᵢˏ;)V
    .locals 4

    .prologue
    iget-wide v0, p0, Lﹳᵢ/יـ;->ٴᵢ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lﹳᵢ/יـ;->ᴵˊ:J

    :goto_0
    iget-object v2, p0, Lﹳᵢ/יـ;->ˈٴ:Lﹳᵢ/ᴵˊ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lﹳᵢ/יـ;->ʽʽ:Lᵔⁱ/ˑﹳ;

    invoke-interface {v2, p1, v3, v0, v1}, Lﹳᵢ/ᴵˊ;->ⁱˊ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/ʾᵎ;

    move-result-object p1

    iput-object p1, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    iget-object v2, p0, Lﹳᵢ/יـ;->ˊʻ:Lﹳᵢ/ـˆ;

    if-eqz v2, :cond_1

    invoke-interface {p1, p0, v0, v1}, Lﹳᵢ/ʾᵎ;->ʼˎ(Lﹳᵢ/ـˆ;J)V

    :cond_1
    return-void
.end method

.method public final ﹳᐧ(J)J
    .locals 2

    iget-object v0, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lﹳᵢ/ʾᵎ;->ﹳᐧ(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ﾞʻ()J
    .locals 2

    iget-object v0, p0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ﾞʻ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ﾞᴵ(Lﹳᵢ/ʿᵢ;)V
    .locals 1

    check-cast p1, Lﹳᵢ/ʾᵎ;

    iget-object p1, p0, Lﹳᵢ/יـ;->ˊʻ:Lﹳᵢ/ـˆ;

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {p1, p0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    return-void
.end method
