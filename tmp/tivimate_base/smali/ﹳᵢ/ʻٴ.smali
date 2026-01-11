.class public final Lﹳᵢ/ʻٴ;
.super Lﹳᵢ/ˊᵔ;
.source "SourceFile"


# instance fields
.field public ʼˈ:Z

.field public final ˆﾞ:Lʽⁱ/ˊˋ;

.field public ˈʿ:Lﹳᵢ/ˏי;

.field public ˊˋ:Z

.field public ˋᵔ:Z

.field public ˑٴ:Lﹳᵢ/יـ;

.field public final ᵔי:Z

.field public final ᵔٴ:Lʽⁱ/ˋᵔ;


# direct methods
.method public constructor <init>(Lﹳᵢ/ᴵˊ;Z)V
    .locals 2

    .prologue
    invoke-direct {p0, p1}, Lﹳᵢ/ˊᵔ;-><init>(Lﹳᵢ/ᴵˊ;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lﹳᵢ/ᴵˊ;->ﾞᴵ()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lﹳᵢ/ʻٴ;->ᵔי:Z

    new-instance p2, Lʽⁱ/ˊˋ;

    invoke-direct {p2}, Lʽⁱ/ˊˋ;-><init>()V

    iput-object p2, p0, Lﹳᵢ/ʻٴ;->ˆﾞ:Lʽⁱ/ˊˋ;

    new-instance p2, Lʽⁱ/ˋᵔ;

    invoke-direct {p2}, Lʽⁱ/ˋᵔ;-><init>()V

    iput-object p2, p0, Lﹳᵢ/ʻٴ;->ᵔٴ:Lʽⁱ/ˋᵔ;

    invoke-interface {p1}, Lﹳᵢ/ᴵˊ;->ʼˎ()Lʽⁱ/ʼˈ;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p1, Lﹳᵢ/ˏי;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v1}, Lﹳᵢ/ˏי;-><init>(Lʽⁱ/ʼˈ;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iput-boolean v0, p0, Lﹳᵢ/ʻٴ;->ʼˈ:Z

    return-void

    :cond_1
    invoke-interface {p1}, Lﹳᵢ/ᴵˊ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object p1

    new-instance p2, Lﹳᵢ/ˏי;

    new-instance v0, Lﹳᵢ/ʽﹳ;

    invoke-direct {v0, p1}, Lﹳᵢ/ʽﹳ;-><init>(Lʽⁱ/ᴵˊ;)V

    sget-object p1, Lʽⁱ/ˊˋ;->ᵔﹳ:Ljava/lang/Object;

    sget-object v1, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    invoke-direct {p2, v0, p1, v1}, Lﹳᵢ/ˏי;-><init>(Lʽⁱ/ʼˈ;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    return-void
.end method


# virtual methods
.method public final ʾᵎ()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lﹳᵢ/ʻٴ;->ˊˋ:Z

    iput-boolean v0, p0, Lﹳᵢ/ʻٴ;->ˋᵔ:Z

    invoke-super {p0}, Lﹳᵢ/ˆʾ;->ʾᵎ()V

    return-void
.end method

.method public final ˉٴ()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lﹳᵢ/ʻٴ;->ᵔי:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹳᵢ/ʻٴ;->ˋᵔ:Z

    invoke-virtual {p0}, Lﹳᵢ/ˊᵔ;->ٴᵢ()V

    :cond_0
    return-void
.end method

.method public final ˊʻ(Lʽⁱ/ʼˈ;)V
    .locals 11

    .prologue
    iget-boolean v1, p0, Lﹳᵢ/ʻٴ;->ˊˋ:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    new-instance v2, Lﹳᵢ/ˏי;

    iget-object v3, v1, Lﹳᵢ/ˏי;->ʽ:Ljava/lang/Object;

    iget-object v1, v1, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    invoke-direct {v2, p1, v3, v1}, Lﹳᵢ/ˏי;-><init>(Lʽⁱ/ʼˈ;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v0, p0, Lﹳᵢ/ʻٴ;->ˑٴ:Lﹳᵢ/יـ;

    if-eqz v0, :cond_6

    iget-wide v0, v0, Lﹳᵢ/יـ;->ٴᵢ:J

    invoke-virtual {p0, v0, v1}, Lﹳᵢ/ʻٴ;->ٴʼ(J)Z

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lﹳᵢ/ʻٴ;->ʼˈ:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    new-instance v2, Lﹳᵢ/ˏי;

    iget-object v3, v1, Lﹳᵢ/ˏי;->ʽ:Ljava/lang/Object;

    iget-object v1, v1, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    invoke-direct {v2, p1, v3, v1}, Lﹳᵢ/ˏי;-><init>(Lʽⁱ/ʼˈ;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lʽⁱ/ˊˋ;->ᵔﹳ:Ljava/lang/Object;

    sget-object v2, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    new-instance v3, Lﹳᵢ/ˏי;

    invoke-direct {v3, p1, v1, v2}, Lﹳᵢ/ˏי;-><init>(Lʽⁱ/ʼˈ;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Lﹳᵢ/ʻٴ;->ˆﾞ:Lʽⁱ/ˊˋ;

    invoke-virtual {p1, v1, v2}, Lʽⁱ/ʼˈ;->ᵔʾ(ILʽⁱ/ˊˋ;)V

    iget-wide v3, v2, Lʽⁱ/ˊˋ;->ﾞʻ:J

    iget-object v6, v2, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    iget-object v5, p0, Lﹳᵢ/ʻٴ;->ˑٴ:Lﹳᵢ/יـ;

    if-eqz v5, :cond_3

    iget-wide v7, v5, Lﹳᵢ/יـ;->ᴵˊ:J

    iget-object v9, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v5, v5, Lﹳᵢ/יـ;->ʾˋ:Lﹳᵢ/ᵢˏ;

    iget-object v5, v5, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v10, p0, Lﹳᵢ/ʻٴ;->ᵔٴ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v9, v5, v10}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget-wide v9, v10, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    add-long/2addr v9, v7

    iget-object v5, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v1, v2, v7, v8}, Lﹳᵢ/ˏי;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    iget-wide v1, v2, Lʽⁱ/ˊˋ;->ﾞʻ:J

    cmp-long v1, v9, v1

    if-eqz v1, :cond_3

    move-wide v4, v9

    goto :goto_1

    :cond_3
    move-wide v4, v3

    :goto_1
    iget-object v2, p0, Lﹳᵢ/ʻٴ;->ᵔٴ:Lʽⁱ/ˋᵔ;

    const/4 v3, 0x0

    iget-object v1, p0, Lﹳᵢ/ʻٴ;->ˆﾞ:Lʽⁱ/ˊˋ;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lʽⁱ/ʼˈ;->ʼˎ(Lʽⁱ/ˊˋ;Lʽⁱ/ˋᵔ;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v1, p0, Lﹳᵢ/ʻٴ;->ʼˈ:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    new-instance v2, Lﹳᵢ/ˏי;

    iget-object v5, v1, Lﹳᵢ/ˏי;->ʽ:Ljava/lang/Object;

    iget-object v1, v1, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    invoke-direct {v2, p1, v5, v1}, Lﹳᵢ/ˏי;-><init>(Lʽⁱ/ʼˈ;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v1, Lﹳᵢ/ˏי;

    invoke-direct {v1, p1, v6, v2}, Lﹳᵢ/ˏי;-><init>(Lʽⁱ/ʼˈ;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v1

    :goto_2
    iput-object v2, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v0, p0, Lﹳᵢ/ʻٴ;->ˑٴ:Lﹳᵢ/יـ;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v3, v4}, Lﹳᵢ/ʻٴ;->ٴʼ(J)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lﹳᵢ/יـ;->ʾˋ:Lﹳᵢ/ᵢˏ;

    iget-object v1, v0, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v2, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v2, v2, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    if-eqz v2, :cond_5

    sget-object v2, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v1, v1, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v1}, Lﹳᵢ/ᵢˏ;->ﹳٴ(Ljava/lang/Object;)Lﹳᵢ/ᵢˏ;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lﹳᵢ/ʻٴ;->ʼˈ:Z

    iput-boolean v1, p0, Lﹳᵢ/ʻٴ;->ˊˋ:Z

    iget-object v1, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    invoke-virtual {p0, v1}, Lﹳᵢ/ﹳٴ;->ʻٴ(Lʽⁱ/ʼˈ;)V

    if-eqz v0, :cond_7

    iget-object v1, p0, Lﹳᵢ/ʻٴ;->ˑٴ:Lﹳᵢ/יـ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lﹳᵢ/יـ;->ﹳٴ(Lﹳᵢ/ᵢˏ;)V

    :cond_7
    return-void
.end method

.method public final ˑﹳ(Lﹳᵢ/ʾᵎ;)V
    .locals 2

    .prologue
    move-object v0, p1

    check-cast v0, Lﹳᵢ/יـ;

    iget-object v1, v0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lﹳᵢ/יـ;->ˈٴ:Lﹳᵢ/ᴵˊ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lﹳᵢ/יـ;->ᴵᵔ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v1, v0}, Lﹳᵢ/ᴵˊ;->ˑﹳ(Lﹳᵢ/ʾᵎ;)V

    :cond_0
    iget-object v0, p0, Lﹳᵢ/ʻٴ;->ˑٴ:Lﹳᵢ/יـ;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lﹳᵢ/ʻٴ;->ˑٴ:Lﹳᵢ/יـ;

    :cond_1
    return-void
.end method

.method public final ٴʼ(J)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳᵢ/ʻٴ;->ˑٴ:Lﹳᵢ/יـ;

    iget-object v1, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v2, v0, Lﹳᵢ/יـ;->ʾˋ:Lﹳᵢ/ᵢˏ;

    iget-object v2, v2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lﹳᵢ/ˏי;->ⁱˊ(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v4, p0, Lﹳᵢ/ʻٴ;->ᵔٴ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v2, v1, v4, v3}, Lﹳᵢ/ˏי;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    iget-wide v1, v4, Lʽⁱ/ˋᵔ;->ˈ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x1

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    iput-wide p1, v0, Lﹳᵢ/יـ;->ٴᵢ:J

    const/4 p1, 0x1

    return p1
.end method

.method public final ᴵᵔ(Lﹳᵢ/ᵢˏ;)Lﹳᵢ/ᵢˏ;
    .locals 2

    .prologue
    iget-object v0, p1, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v1, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v1, v1, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v0}, Lﹳᵢ/ᵢˏ;->ﹳٴ(Ljava/lang/Object;)Lﹳᵢ/ᵢˏ;

    move-result-object p1

    return-object p1
.end method

.method public final ᵎⁱ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/יـ;
    .locals 1

    .prologue
    new-instance v0, Lﹳᵢ/יـ;

    invoke-direct {v0, p1, p2, p3, p4}, Lﹳᵢ/יـ;-><init>(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)V

    iget-object p2, v0, Lﹳᵢ/יـ;->ˈٴ:Lﹳᵢ/ᴵˊ;

    const/4 p3, 0x1

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object p2, p0, Lﹳᵢ/ˊᵔ;->ᵎˊ:Lﹳᵢ/ᴵˊ;

    iput-object p2, v0, Lﹳᵢ/יـ;->ˈٴ:Lﹳᵢ/ᴵˊ;

    iget-boolean p2, p0, Lﹳᵢ/ʻٴ;->ˊˋ:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object p3, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object p3, p3, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    if-eqz p3, :cond_1

    sget-object p3, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p2, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object p2, p2, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, p2}, Lﹳᵢ/ᵢˏ;->ﹳٴ(Ljava/lang/Object;)Lﹳᵢ/ᵢˏ;

    move-result-object p1

    invoke-virtual {v0, p1}, Lﹳᵢ/יـ;->ﹳٴ(Lﹳᵢ/ᵢˏ;)V

    return-object v0

    :cond_2
    iput-object v0, p0, Lﹳᵢ/ʻٴ;->ˑٴ:Lﹳᵢ/יـ;

    iget-boolean p1, p0, Lﹳᵢ/ʻٴ;->ˋᵔ:Z

    if-nez p1, :cond_3

    iput-boolean p3, p0, Lﹳᵢ/ʻٴ;->ˋᵔ:Z

    invoke-virtual {p0}, Lﹳᵢ/ˊᵔ;->ٴᵢ()V

    :cond_3
    return-object v0
.end method

.method public final ᵔʾ(Lʽⁱ/ᴵˊ;)V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lﹳᵢ/ʻٴ;->ʼˈ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    new-instance v1, Lⁱי/ᵎᵔ;

    iget-object v2, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v2, v2, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-direct {v1, v2, p1}, Lⁱי/ᵎᵔ;-><init>(Lʽⁱ/ʼˈ;Lʽⁱ/ᴵˊ;)V

    new-instance v2, Lﹳᵢ/ˏי;

    iget-object v3, v0, Lﹳᵢ/ˏי;->ʽ:Ljava/lang/Object;

    iget-object v0, v0, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v0}, Lﹳᵢ/ˏי;-><init>(Lʽⁱ/ʼˈ;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    goto :goto_0

    :cond_0
    new-instance v0, Lﹳᵢ/ˏי;

    new-instance v1, Lﹳᵢ/ʽﹳ;

    invoke-direct {v1, p1}, Lﹳᵢ/ʽﹳ;-><init>(Lʽⁱ/ᴵˊ;)V

    sget-object v2, Lʽⁱ/ˊˋ;->ᵔﹳ:Ljava/lang/Object;

    sget-object v3, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lﹳᵢ/ˏי;-><init>(Lʽⁱ/ʼˈ;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    :goto_0
    iget-object v0, p0, Lﹳᵢ/ˊᵔ;->ᵎˊ:Lﹳᵢ/ᴵˊ;

    invoke-interface {v0, p1}, Lﹳᵢ/ᴵˊ;->ᵔʾ(Lʽⁱ/ᴵˊ;)V

    return-void
.end method

.method public final bridge synthetic ⁱˊ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/ʾᵎ;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lﹳᵢ/ʻٴ;->ᵎⁱ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/יـ;

    move-result-object p1

    return-object p1
.end method
