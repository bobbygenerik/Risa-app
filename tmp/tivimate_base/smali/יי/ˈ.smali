.class public final Lיי/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public ʼˎ:Z

.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public final ˈ:Lʻᴵ/ʻٴ;

.field public ˑﹳ:Lˊﾞ/ᵔﹳ;

.field public ᵎﹶ:J

.field public ᵔᵢ:Z

.field public final ⁱˊ:Lᐧˎ/ﹳᐧ;

.field public final ﹳٴ:Lיי/ˑﹳ;

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lיי/ˑﹳ;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "audio/mp4a-latm"

    const/4 v3, 0x1

    invoke-direct {p1, v1, v0, v2, v3}, Lיי/ˑﹳ;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lיי/ˈ;->ﹳٴ:Lיי/ˑﹳ;

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lיי/ˈ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lיי/ˈ;->ᵎﹶ:J

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lיי/ˈ;->ʽ:Lᐧˎ/ﹳᐧ;

    new-instance v0, Lʻᴵ/ʻٴ;

    iget-object p1, p1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    array-length v1, p1

    invoke-direct {v0, v1, p1}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    iput-object v0, p0, Lיי/ˈ;->ˈ:Lʻᴵ/ʻٴ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 3

    iput-object p1, p0, Lיי/ˈ;->ˑﹳ:Lˊﾞ/ᵔﹳ;

    new-instance v0, Lיי/ٴᵢ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lיי/ٴᵢ;-><init>(II)V

    iget-object v1, p0, Lיי/ˈ;->ﹳٴ:Lיי/ˑﹳ;

    invoke-virtual {v1, p1, v0}, Lיי/ˑﹳ;->ﾞᴵ(Lˊﾞ/ᵔﹳ;Lיי/ٴᵢ;)V

    invoke-interface {p1}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    return-void
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 8

    .prologue
    iget-object p2, p0, Lיי/ˈ;->ˑﹳ:Lˊﾞ/ᵔﹳ;

    invoke-static {p2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->getLength()J

    iget-object p2, p0, Lיי/ˈ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    iget-object v0, p2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v1, 0x800

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-boolean v4, p0, Lיי/ˈ;->ʼˎ:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lיי/ˈ;->ˑﹳ:Lˊﾞ/ᵔﹳ;

    new-instance v5, Lˊﾞ/יـ;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v5, v6, v7}, Lˊﾞ/יـ;-><init>(J)V

    invoke-interface {v4, v5}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    iput-boolean v1, p0, Lיי/ˈ;->ʼˎ:Z

    :goto_1
    if-eqz v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {p2, p1}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    iget-boolean p1, p0, Lיי/ˈ;->ᵔᵢ:Z

    iget-object v0, p0, Lיי/ˈ;->ﹳٴ:Lיי/ˑﹳ;

    if-nez p1, :cond_3

    iget-wide v3, p0, Lיי/ˈ;->ﾞᴵ:J

    iput-wide v3, v0, Lיי/ˑﹳ;->ʽﹳ:J

    iput-boolean v1, p0, Lיי/ˈ;->ᵔᵢ:Z

    :cond_3
    invoke-virtual {v0, p2}, Lיי/ˑﹳ;->ʽ(Lᐧˎ/ﹳᐧ;)V

    return v2
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lיי/ˈ;->ᵔᵢ:Z

    iget-object p1, p0, Lיי/ˈ;->ﹳٴ:Lיי/ˑﹳ;

    invoke-virtual {p1}, Lיי/ˑﹳ;->ⁱˊ()V

    iput-wide p3, p0, Lיי/ˈ;->ﾞᴵ:J

    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lיי/ˈ;->ʽ:Lᐧˎ/ﹳᐧ;

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v4, 0xa

    invoke-interface {p1, v3, v0, v4}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-virtual {v2, v0}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵˊ()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_5

    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    invoke-interface {p1, v1}, Lˊﾞ/ʼᐧ;->ᴵˊ(I)V

    iget-wide v2, p0, Lיי/ˈ;->ᵎﹶ:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    int-to-long v2, v1

    iput-wide v2, p0, Lיי/ˈ;->ᵎﹶ:J

    :cond_0
    const/4 v3, 0x0

    move v2, v1

    move v0, v3

    move v4, v0

    :cond_1
    iget-object v5, p0, Lיי/ˈ;->ʽ:Lᐧˎ/ﹳᐧ;

    iget-object v6, v5, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    move-object v7, p1

    check-cast v7, Lˊﾞ/ﾞʻ;

    const/4 v8, 0x2

    invoke-virtual {v7, v6, v3, v8, v3}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v5, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v5}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v6

    const v8, 0xfff6

    and-int/2addr v6, v8

    const v8, 0xfff0

    if-ne v6, v8, :cond_4

    const/4 v6, 0x1

    add-int/2addr v0, v6

    const/4 v8, 0x4

    if-lt v0, v8, :cond_2

    const/16 v9, 0xbc

    if-le v4, v9, :cond_2

    return v6

    :cond_2
    iget-object v5, v5, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {v7, v5, v3, v8, v3}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    const/16 v5, 0xe

    iget-object v6, p0, Lיי/ˈ;->ˈ:Lʻᴵ/ʻٴ;

    invoke-virtual {v6, v5}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    const/16 v5, 0xd

    invoke-virtual {v6, v5}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    iput v3, v7, Lˊﾞ/ﾞʻ;->ˊʻ:I

    invoke-virtual {v7, v2, v3}, Lˊﾞ/ﾞʻ;->ﹳٴ(IZ)Z

    :goto_1
    move v0, v3

    move v4, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v5, -0x6

    invoke-virtual {v7, v6, v3}, Lˊﾞ/ﾞʻ;->ﹳٴ(IZ)Z

    add-int/2addr v4, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    iput v3, v7, Lˊﾞ/ﾞʻ;->ˊʻ:I

    invoke-virtual {v7, v2, v3}, Lˊﾞ/ﾞʻ;->ﹳٴ(IZ)Z

    goto :goto_1

    :goto_2
    sub-int v5, v2, v1

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_1

    return v3

    :cond_5
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʾᵎ()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    invoke-interface {p1, v2}, Lˊﾞ/ʼᐧ;->ᴵˊ(I)V

    goto/16 :goto_0
.end method
