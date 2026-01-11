.class public abstract Lˈˏ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽʽ:I

.field public ʾˋ:I

.field public ˈٴ:Ljava/lang/Object;

.field public ᴵˊ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lٴﾞ/ˆʾ;->ʽʽ:Lٴﾞ/ˆʾ;

    if-nez v0, :cond_0

    new-instance v0, Lٴﾞ/ˆʾ;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lٴﾞ/ˆʾ;-><init>(I)V

    sput-object v0, Lٴﾞ/ˆʾ;->ʽʽ:Lٴﾞ/ˆʾ;

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lˈˏ/ʽ;->ʾˋ:I

    iget-object v1, p0, Lˈˏ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lⁱˏ/ﾞᴵ;

    iget v1, v1, Lⁱˏ/ﾞᴵ;->ˊʻ:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˈˏ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lⁱˏ/ﾞᴵ;

    invoke-virtual {p0}, Lˈˏ/ʽ;->ⁱˊ()V

    iget v1, p0, Lˈˏ/ʽ;->ᴵˊ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lⁱˏ/ﾞᴵ;->ʽ()V

    iget v1, p0, Lˈˏ/ʽ;->ᴵˊ:I

    invoke-virtual {v0, v1}, Lⁱˏ/ﾞᴵ;->ʼˎ(I)V

    iput v2, p0, Lˈˏ/ʽ;->ᴵˊ:I

    iget v0, v0, Lⁱˏ/ﾞᴵ;->ˉٴ:I

    iput v0, p0, Lˈˏ/ʽ;->ʽʽ:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() before removing element from the iterator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract ʽ(Landroid/view/View;)Ljava/lang/Object;
.end method

.method public abstract ˈ(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public ˑﹳ()V
    .locals 3

    .prologue
    :goto_0
    iget v0, p0, Lˈˏ/ʽ;->ʾˋ:I

    iget-object v1, p0, Lˈˏ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lⁱˏ/ﾞᴵ;

    iget v2, v1, Lⁱˏ/ﾞᴵ;->ˊʻ:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lⁱˏ/ﾞᴵ;->ʽʽ:[I

    aget v1, v1, v0

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lˈˏ/ʽ;->ʾˋ:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public ⁱˊ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˈˏ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lⁱˏ/ﾞᴵ;

    iget v0, v0, Lⁱˏ/ﾞᴵ;->ˉٴ:I

    iget v1, p0, Lˈˏ/ʽ;->ʽʽ:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public ﹳٴ(I)I
    .locals 2

    .prologue
    iget v0, p0, Lˈˏ/ʽ;->ʽʽ:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lˈˏ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget v1, p0, Lˈˏ/ʽ;->ᴵˊ:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ﾞᴵ(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lˈˏ/ʽ;->ᴵˊ:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lˈˏ/ʽ;->ˈ(Landroid/view/View;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lˈˏ/ʽ;->ᴵˊ:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lˈˏ/ʽ;->ʽ(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lˈˏ/ʽ;->ʾˋ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lˈˏ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lˈˏ/ʽ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lˋᵔ/ᵎˊ;->ˈ(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lˋᵔ/ﹳٴ;

    if-eqz v1, :cond_4

    check-cast v0, Lˋᵔ/ﹳٴ;

    iget-object v0, v0, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    goto :goto_1

    :cond_4
    new-instance v1, Lˋᵔ/ⁱˊ;

    invoke-direct {v1, v0}, Lˋᵔ/ⁱˊ;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_5

    new-instance v0, Lˋᵔ/ⁱˊ;

    invoke-direct {v0}, Lˋᵔ/ⁱˊ;-><init>()V

    :cond_5
    invoke-static {p1, v0}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    iget v0, p0, Lˈˏ/ʽ;->ʾˋ:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget p2, p0, Lˈˏ/ʽ;->ʽʽ:I

    invoke-static {p1, p2}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    :cond_6
    return-void
.end method
