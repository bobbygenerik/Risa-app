.class public final Lˊﾞ/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:Lˊﾞ/ٴᵢ;

.field public final ⁱˊ:I

.field public final ﹳٴ:I

.field public ﾞᴵ:Lˊﾞ/ᵔﹳ;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˊﾞ/ʽʽ;->ﹳٴ:I

    iput p2, p0, Lˊﾞ/ʽʽ;->ⁱˊ:I

    iput-object p3, p0, Lˊﾞ/ʽʽ;->ʽ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 3

    iput-object p1, p0, Lˊﾞ/ʽʽ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    const/16 v0, 0x400

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˊﾞ/ʽʽ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    iget-object v1, p0, Lˊﾞ/ʽʽ;->ʽ:Ljava/lang/String;

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    invoke-static {v0, p1}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    iget-object p1, p0, Lˊﾞ/ʽʽ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    invoke-interface {p1}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    iget-object p1, p0, Lˊﾞ/ʽʽ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    new-instance v0, Lˊﾞ/ˈٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    const/4 p1, 0x1

    iput p1, p0, Lˊﾞ/ʽʽ;->ˑﹳ:I

    return-void
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 9

    .prologue
    iget p2, p0, Lˊﾞ/ʽʽ;->ˑﹳ:I

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-object p2, p0, Lˊﾞ/ʽʽ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {p2, p1, v3, v2}, Lˊﾞ/ٴᵢ;->ʽ(Lʽⁱ/ˆʾ;IZ)I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_2

    iput v1, p0, Lˊﾞ/ʽʽ;->ˑﹳ:I

    iget-object v2, p0, Lˊﾞ/ʽʽ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    iget v6, p0, Lˊﾞ/ʽʽ;->ˈ:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v8}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput p2, p0, Lˊﾞ/ʽʽ;->ˈ:I

    return p2

    :cond_2
    iget v0, p0, Lˊﾞ/ʽʽ;->ˈ:I

    add-int/2addr v0, p1

    iput v0, p0, Lˊﾞ/ʽʽ;->ˈ:I

    return p2
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 0

    .prologue
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lˊﾞ/ʽʽ;->ˑﹳ:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p2, p0, Lˊﾞ/ʽʽ;->ˑﹳ:I

    const/4 p1, 0x0

    iput p1, p0, Lˊﾞ/ʽʽ;->ˈ:I

    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lˊﾞ/ʽʽ;->ⁱˊ:I

    iget v3, p0, Lˊﾞ/ʽʽ;->ﹳٴ:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-eq v2, v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-static {v4}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    new-instance v4, Lᐧˎ/ﹳᐧ;

    invoke-direct {v4, v2}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v5, v4, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    check-cast p1, Lˊﾞ/ﾞʻ;

    invoke-virtual {p1, v5, v1, v2, v1}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v4}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result p1

    if-ne p1, v3, :cond_1

    return v0

    :cond_1
    return v1
.end method
