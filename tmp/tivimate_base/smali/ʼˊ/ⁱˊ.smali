.class public final Lʼˊ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼˊ/ٴﹶ;
.implements Lʼˊ/ˆʾ;


# instance fields
.field public ʾˋ:I

.field public ᴵˊ:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput p1, p0, Lʼˊ/ⁱˊ;->ʾˋ:I

    iput-wide p2, p0, Lʼˊ/ⁱˊ;->ᴵˊ:J

    return-void
.end method

.method public synthetic constructor <init>(JZI)V
    .locals 0

    iput p4, p0, Lʼˊ/ⁱˊ;->ʾˋ:I

    iput-wide p1, p0, Lʼˊ/ⁱˊ;->ᴵˊ:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ᵎﹶ(Lˊﾞ/ʼᐧ;Lᐧˎ/ﹳᐧ;)Lʼˊ/ⁱˊ;
    .locals 3

    iget-object v0, p1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-virtual {p1, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result p0

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ʼᐧ()J

    move-result-wide v0

    new-instance p1, Lʼˊ/ⁱˊ;

    invoke-direct {p1, v0, v1, v2, p0}, Lʼˊ/ⁱˊ;-><init>(JZI)V

    return-object p1
.end method


# virtual methods
.method public ʽ(Ljava/io/InputStream;Lʼˊ/ﹳٴ;)Ljava/io/InputStream;
    .locals 4

    .prologue
    iget p2, p0, Lʼˊ/ⁱˊ;->ʾˋ:I

    iget-wide v0, p0, Lʼˊ/ⁱˊ;->ᴵˊ:J

    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Lﾞᵢ/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lﾞᵢ/ʽ;->ⁱˊ:I

    add-int/lit8 p2, p2, 0x5

    iput p2, v0, Lﾞᵢ/ʽ;->ﹳٴ:I

    goto/16 :goto_0

    :cond_0
    const-wide/16 v2, 0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    new-instance v0, Lﾞᵢ/ﹳٴ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lﾞᵢ/ﹳٴ;-><init>(I)V

    iput p2, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x6

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    new-instance v0, Lﾞᵢ/ﹳٴ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lﾞᵢ/ﹳٴ;-><init>(I)V

    iput p2, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x7

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    new-instance v0, Lﾞᵢ/ﹳٴ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lﾞᵢ/ﹳٴ;-><init>(I)V

    add-int/lit8 p2, p2, 0x8

    iput p2, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    new-instance v0, Lﾞᵢ/ﹳٴ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lﾞᵢ/ﹳٴ;-><init>(I)V

    add-int/lit8 p2, p2, 0x4

    iput p2, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x9

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    new-instance v0, Lﾞᵢ/ﹳٴ;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lﾞᵢ/ﹳٴ;-><init>(I)V

    iput p2, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    new-instance v0, Lﾞᵢ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lﾞᵢ/ﹳٴ;-><init>(I)V

    iput p2, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    goto :goto_0

    :cond_6
    const-wide/16 v2, 0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    new-instance v0, Lﾞᵢ/ﹳٴ;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lﾞᵢ/ﹳٴ;-><init>(I)V

    iput p2, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    new-instance p2, Lʼˊ/ᵔʾ;

    invoke-direct {p2, p1, v0}, Lʼˊ/ᵔʾ;-><init>(Ljava/io/InputStream;Lﾞᵢ/ⁱˊ;)V

    return-object p2
.end method

.method public ˈ()I
    .locals 1

    sget v0, Lʼˊ/ᵔʾ;->ٴʼ:I

    const/4 v0, 0x5

    return v0
.end method

.method public ˑﹳ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ⁱˊ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ﹳٴ()Z
    .locals 2

    .prologue
    iget v0, p0, Lʼˊ/ⁱˊ;->ʾˋ:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public ﾞᴵ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
