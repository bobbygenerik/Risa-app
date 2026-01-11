.class public final Lיᐧ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיᐧ/ᵔᵢ;


# instance fields
.field public ʽ:Landroid/graphics/Bitmap$Config;

.field public ⁱˊ:I

.field public final ﹳٴ:Lיᐧ/ˑﹳ;


# direct methods
.method public constructor <init>(Lיᐧ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיᐧ/ˆʾ;->ﹳٴ:Lיᐧ/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lיᐧ/ˆʾ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lיᐧ/ˆʾ;

    iget v0, p0, Lיᐧ/ˆʾ;->ⁱˊ:I

    iget v2, p1, Lיᐧ/ˆʾ;->ⁱˊ:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lיᐧ/ˆʾ;->ʽ:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lיᐧ/ˆʾ;->ʽ:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1}, Lʿٴ/ᵔʾ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    iget v0, p0, Lיᐧ/ˆʾ;->ⁱˊ:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lיᐧ/ˆʾ;->ʽ:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lיᐧ/ˆʾ;->ⁱˊ:I

    iget-object v1, p0, Lיᐧ/ˆʾ;->ʽ:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lיᐧ/ٴﹶ;->ʽ(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()V
    .locals 1

    iget-object v0, p0, Lיᐧ/ˆʾ;->ﹳٴ:Lיᐧ/ˑﹳ;

    invoke-virtual {v0, p0}, Lʽⁱ/ᵎﹶ;->ˎᐧ(Lיᐧ/ᵔᵢ;)V

    return-void
.end method
