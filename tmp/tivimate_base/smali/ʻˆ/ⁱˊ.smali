.class public final Lʻˆ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʽ:I

.field public ˈ:J

.field public final ˑﹳ:Z

.field public final ᵎﹶ:Lᐧˎ/ﹳᐧ;

.field public ᵔᵢ:I

.field public ⁱˊ:I

.field public final ﹳٴ:I

.field public final ﾞᴵ:Lᐧˎ/ﹳᐧ;


# direct methods
.method public constructor <init>(Lᐧˎ/ﹳᐧ;Lᐧˎ/ﹳᐧ;Z)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻˆ/ⁱˊ;->ᵎﹶ:Lᐧˎ/ﹳᐧ;

    iput-object p2, p0, Lʻˆ/ⁱˊ;->ﾞᴵ:Lᐧˎ/ﹳᐧ;

    iput-boolean p3, p0, Lʻˆ/ⁱˊ;->ˑﹳ:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {p2}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result p2

    iput p2, p0, Lʻˆ/ⁱˊ;->ﹳٴ:I

    invoke-virtual {p1, p3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result p2

    iput p2, p0, Lʻˆ/ⁱˊ;->ʼˎ:I

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p1, p2}, Lˊﾞ/ﹳٴ;->ˑﹳ(Ljava/lang/String;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lʻˆ/ⁱˊ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Z
    .locals 4

    .prologue
    iget v0, p0, Lʻˆ/ⁱˊ;->ⁱˊ:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lʻˆ/ⁱˊ;->ⁱˊ:I

    iget v2, p0, Lʻˆ/ⁱˊ;->ﹳٴ:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lʻˆ/ⁱˊ;->ˑﹳ:Z

    iget-object v2, p0, Lʻˆ/ⁱˊ;->ﾞᴵ:Lᐧˎ/ﹳᐧ;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ˈٴ()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lʻˆ/ⁱˊ;->ˈ:J

    iget v0, p0, Lʻˆ/ⁱˊ;->ⁱˊ:I

    iget v2, p0, Lʻˆ/ⁱˊ;->ᵔᵢ:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lʻˆ/ⁱˊ;->ᵎﹶ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v2

    iput v2, p0, Lʻˆ/ⁱˊ;->ʽ:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    iget v2, p0, Lʻˆ/ⁱˊ;->ʼˎ:I

    sub-int/2addr v2, v1

    iput v2, p0, Lʻˆ/ⁱˊ;->ʼˎ:I

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lʻˆ/ⁱˊ;->ᵔᵢ:I

    :cond_3
    return v1
.end method
