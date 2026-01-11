.class public abstract Lⁱⁱ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

.field public ʾˋ:I

.field public ˆﾞ:Ljava/lang/Class;

.field public ˈʿ:Z

.field public ˈٴ:Landroid/graphics/drawable/Drawable;

.field public ˉٴ:I

.field public ˊʻ:Z

.field public ˋᵔ:Z

.field public ˑٴ:Z

.field public ٴʼ:Z

.field public ٴᵢ:I

.field public ᴵˊ:Lʿʾ/ﾞʻ;

.field public ᴵᵔ:Landroid/graphics/drawable/Drawable;

.field public ᵎˊ:Lʼᵔ/ᵔᵢ;

.field public ᵎⁱ:Lʼᵔ/ˑﹳ;

.field public ᵔי:Lʿٴ/ʽ;

.field public ᵔٴ:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lʿʾ/ﾞʻ;->ˈ:Lʿʾ/ﾞʻ;

    iput-object v0, p0, Lⁱⁱ/ﹳٴ;->ᴵˊ:Lʿʾ/ﾞʻ;

    sget-object v0, Lcom/bumptech/glide/ᵎﹶ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    iput-object v0, p0, Lⁱⁱ/ﹳٴ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˊʻ:Z

    const/4 v1, -0x1

    iput v1, p0, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    iput v1, p0, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    sget-object v1, Lˋᵎ/ﹳٴ;->ⁱˊ:Lˋᵎ/ﹳٴ;

    iput-object v1, p0, Lⁱⁱ/ﹳٴ;->ᵎⁱ:Lʼᵔ/ˑﹳ;

    new-instance v1, Lʼᵔ/ᵔᵢ;

    invoke-direct {v1}, Lʼᵔ/ᵔᵢ;-><init>()V

    iput-object v1, p0, Lⁱⁱ/ﹳٴ;->ᵎˊ:Lʼᵔ/ᵔᵢ;

    new-instance v1, Lʿٴ/ʽ;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object v1, p0, Lⁱⁱ/ﹳٴ;->ᵔי:Lʿٴ/ʽ;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lⁱⁱ/ﹳٴ;->ˆﾞ:Ljava/lang/Class;

    iput-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˑٴ:Z

    return-void
.end method

.method public static ʼˎ(II)Z
    .locals 0

    .prologue
    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lⁱⁱ/ﹳٴ;

    if-eqz v0, :cond_0

    check-cast p1, Lⁱⁱ/ﹳٴ;

    invoke-virtual {p0, p1}, Lⁱⁱ/ﹳٴ;->ᵔᵢ(Lⁱⁱ/ﹳٴ;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lʿٴ/ᵔʾ;->ﹳٴ:[C

    const/16 v0, 0x11

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {v1, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    iget-object v2, p0, Lⁱⁱ/ﹳٴ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v1, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    iget-object v2, p0, Lⁱⁱ/ﹳٴ;->ᴵᵔ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v1, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v3, p0, Lⁱⁱ/ﹳٴ;->ˊʻ:Z

    invoke-static {v3, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    iget v3, p0, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    invoke-static {v3, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    iget v3, p0, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    invoke-static {v3, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    iget-boolean v3, p0, Lⁱⁱ/ﹳٴ;->ٴʼ:Z

    invoke-static {v3, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v3, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    invoke-static {v1, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    invoke-static {v1, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    iget-object v1, p0, Lⁱⁱ/ﹳٴ;->ᴵˊ:Lʿʾ/ﾞʻ;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lⁱⁱ/ﹳٴ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lⁱⁱ/ﹳٴ;->ᵎˊ:Lʼᵔ/ᵔᵢ;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lⁱⁱ/ﹳٴ;->ᵔי:Lʿٴ/ʽ;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lⁱⁱ/ﹳٴ;->ˆﾞ:Ljava/lang/Class;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lⁱⁱ/ﹳٴ;->ᵎⁱ:Lʼᵔ/ˑﹳ;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0, v2}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final ʻٴ()Lⁱⁱ/ﹳٴ;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Lⁱⁱ/ﹳٴ;->ʻٴ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˋᵔ:Z

    iget v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ʼᐧ(Lʼᵔ/ᵎﹶ;Lᵔﹶ/ﾞʻ;)Lⁱⁱ/ﹳٴ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lⁱⁱ/ﹳٴ;->ʼᐧ(Lʼᵔ/ᵎﹶ;Lᵔﹶ/ﾞʻ;)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lʿٴ/ﾞᴵ;->ⁱˊ(Ljava/lang/Object;)V

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ᵎˊ:Lʼᵔ/ᵔᵢ;

    iget-object v0, v0, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    invoke-virtual {v0, p1, p2}, Lʿٴ/ʽ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ʽﹳ(Lʼᵔ/ﾞʻ;Z)Lⁱⁱ/ﹳٴ;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lⁱⁱ/ﹳٴ;->ʽﹳ(Lʼᵔ/ﾞʻ;Z)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lᵔﹶ/יـ;

    invoke-direct {v0, p1, p2}, Lᵔﹶ/יـ;-><init>(Lʼᵔ/ﾞʻ;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lⁱⁱ/ﹳٴ;->ˏי(Ljava/lang/Class;Lʼᵔ/ﾞʻ;Z)Lⁱⁱ/ﹳٴ;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lⁱⁱ/ﹳٴ;->ˏי(Ljava/lang/Class;Lʼᵔ/ﾞʻ;Z)Lⁱⁱ/ﹳٴ;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lⁱⁱ/ﹳٴ;->ˏי(Ljava/lang/Class;Lʼᵔ/ﾞʻ;Z)Lⁱⁱ/ﹳٴ;

    new-instance v0, Lᴵﹶ/ʽ;

    invoke-direct {v0, p1}, Lᴵﹶ/ʽ;-><init>(Lʼᵔ/ﾞʻ;)V

    const-class p1, Lᴵﹶ/ⁱˊ;

    invoke-virtual {p0, p1, v0, p2}, Lⁱⁱ/ﹳٴ;->ˏי(Ljava/lang/Class;Lʼᵔ/ﾞʻ;Z)Lⁱⁱ/ﹳٴ;

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ˆʾ(Lᵔﹶ/ﾞʻ;Lᵔﹶ/ˈ;)Lⁱⁱ/ﹳٴ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lⁱⁱ/ﹳٴ;->ˆʾ(Lᵔﹶ/ﾞʻ;Lᵔﹶ/ˈ;)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lᵔﹶ/ﾞʻ;->ᵎﹶ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p0, v0, p1}, Lⁱⁱ/ﹳٴ;->ʼᐧ(Lʼᵔ/ᵎﹶ;Lᵔﹶ/ﾞʻ;)Lⁱⁱ/ﹳٴ;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lⁱⁱ/ﹳٴ;->ʽﹳ(Lʼᵔ/ﾞʻ;Z)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ(Ljava/lang/Class;)Lⁱⁱ/ﹳٴ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lⁱⁱ/ﹳٴ;->ˈ(Ljava/lang/Class;)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lⁱⁱ/ﹳٴ;->ˆﾞ:Ljava/lang/Class;

    iget p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ˉʿ()Lⁱⁱ/ﹳٴ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Lⁱⁱ/ﹳٴ;->ˉʿ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/bumptech/glide/ᵎﹶ;->ˈٴ:Lcom/bumptech/glide/ᵎﹶ;

    iput-object v0, p0, Lⁱⁱ/ﹳٴ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    iget v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ˏי(Ljava/lang/Class;Lʼᵔ/ﾞʻ;Z)Lⁱⁱ/ﹳٴ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lⁱⁱ/ﹳٴ;->ˏי(Ljava/lang/Class;Lʼᵔ/ﾞʻ;Z)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lʿٴ/ﾞᴵ;->ⁱˊ(Ljava/lang/Object;)V

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ᵔי:Lʿٴ/ʽ;

    invoke-virtual {v0, p1, p2}, Lʿٴ/ʽ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const p2, 0x10800

    or-int/2addr p2, p1

    iput p2, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lⁱⁱ/ﹳٴ;->ˑٴ:Z

    if-eqz p3, :cond_1

    const p2, 0x30800

    or-int/2addr p1, p2

    iput p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lⁱⁱ/ﹳٴ;->ٴʼ:Z

    :cond_1
    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ˑﹳ(Lʿʾ/ﾞʻ;)Lⁱⁱ/ﹳٴ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lⁱⁱ/ﹳٴ;->ˑﹳ(Lʿʾ/ﾞʻ;)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lⁱⁱ/ﹳٴ;->ᴵˊ:Lʿʾ/ﾞʻ;

    iget p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final יـ()Lⁱⁱ/ﹳٴ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Lⁱⁱ/ﹳٴ;->יـ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˊʻ:Z

    iget v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ٴﹶ(II)Lⁱⁱ/ﹳٴ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lⁱⁱ/ﹳٴ;->ٴﹶ(II)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    iput p2, p0, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    iget p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ᵔʾ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ᵔٴ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔᵢ(Lⁱⁱ/ﹳٴ;)Z
    .locals 2

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lⁱⁱ/ﹳٴ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ᴵᵔ:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lⁱⁱ/ﹳٴ;->ᴵᵔ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˊʻ:Z

    iget-boolean v1, p1, Lⁱⁱ/ﹳٴ;->ˊʻ:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    iget v1, p1, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    iget v1, p1, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ٴʼ:Z

    iget-boolean v1, p1, Lⁱⁱ/ﹳٴ;->ٴʼ:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ᴵˊ:Lʿʾ/ﾞʻ;

    iget-object v1, p1, Lⁱⁱ/ﹳٴ;->ᴵˊ:Lʿʾ/ﾞʻ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    iget-object v1, p1, Lⁱⁱ/ﹳٴ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ᵎˊ:Lʼᵔ/ᵔᵢ;

    iget-object v1, p1, Lⁱⁱ/ﹳٴ;->ᵎˊ:Lʼᵔ/ᵔᵢ;

    invoke-virtual {v0, v1}, Lʼᵔ/ᵔᵢ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ᵔי:Lʿٴ/ʽ;

    iget-object v1, p1, Lⁱⁱ/ﹳٴ;->ᵔי:Lʿٴ/ʽ;

    invoke-virtual {v0, v1}, Lיـ/ﹳᐧ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ˆﾞ:Ljava/lang/Class;

    iget-object v1, p1, Lⁱⁱ/ﹳٴ;->ˆﾞ:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ᵎⁱ:Lʼᵔ/ˑﹳ;

    iget-object p1, p1, Lⁱⁱ/ﹳٴ;->ᵎⁱ:Lʼᵔ/ˑﹳ;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ᵔﹳ(Lˋᵎ/ⁱˊ;)Lⁱⁱ/ﹳٴ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lⁱⁱ/ﹳٴ;->ᵔﹳ(Lˋᵎ/ⁱˊ;)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lⁱⁱ/ﹳٴ;->ᵎⁱ:Lʼᵔ/ˑﹳ;

    iget p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public ⁱˊ()Lⁱⁱ/ﹳٴ;
    .locals 4

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lⁱⁱ/ﹳٴ;

    new-instance v1, Lʼᵔ/ᵔᵢ;

    invoke-direct {v1}, Lʼᵔ/ᵔᵢ;-><init>()V

    iput-object v1, v0, Lⁱⁱ/ﹳٴ;->ᵎˊ:Lʼᵔ/ᵔᵢ;

    iget-object v2, p0, Lⁱⁱ/ﹳٴ;->ᵎˊ:Lʼᵔ/ᵔᵢ;

    iget-object v1, v1, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    iget-object v2, v2, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    invoke-virtual {v1, v2}, Lʿٴ/ʽ;->ᵎﹶ(Lיـ/ˑﹳ;)V

    new-instance v1, Lʿٴ/ʽ;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object v1, v0, Lⁱⁱ/ﹳٴ;->ᵔי:Lʿٴ/ʽ;

    iget-object v3, p0, Lⁱⁱ/ﹳٴ;->ᵔי:Lʿٴ/ʽ;

    invoke-virtual {v1, v3}, Lיـ/ˑﹳ;->putAll(Ljava/util/Map;)V

    iput-boolean v2, v0, Lⁱⁱ/ﹳٴ;->ᵔٴ:Z

    iput-boolean v2, v0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public ﹳٴ(Lⁱⁱ/ﹳٴ;)Lⁱⁱ/ﹳٴ;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lⁱⁱ/ﹳٴ;->ﹳٴ(Lⁱⁱ/ﹳٴ;)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lⁱⁱ/ﹳٴ;->ˋᵔ:Z

    iput-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˋᵔ:Z

    :cond_1
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lⁱⁱ/ﹳٴ;->ᴵˊ:Lʿʾ/ﾞʻ;

    iput-object v0, p0, Lⁱⁱ/ﹳٴ;->ᴵˊ:Lʿʾ/ﾞʻ;

    :cond_2
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lⁱⁱ/ﹳٴ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    iput-object v0, p0, Lⁱⁱ/ﹳٴ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    :cond_3
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lⁱⁱ/ﹳٴ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lⁱⁱ/ﹳٴ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    :cond_4
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iput-object v1, p0, Lⁱⁱ/ﹳٴ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    :cond_5
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v2, 0x40

    invoke-static {v0, v2}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lⁱⁱ/ﹳٴ;->ᴵᵔ:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lⁱⁱ/ﹳٴ;->ᴵᵔ:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    :cond_6
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v1, p0, Lⁱⁱ/ﹳٴ;->ᴵᵔ:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    :cond_7
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Lⁱⁱ/ﹳٴ;->ˊʻ:Z

    iput-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˊʻ:Z

    :cond_8
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    iget v0, p1, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    :cond_9
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lⁱⁱ/ﹳٴ;->ᵎⁱ:Lʼᵔ/ˑﹳ;

    iput-object v0, p0, Lⁱⁱ/ﹳٴ;->ᵎⁱ:Lʼᵔ/ˑﹳ;

    :cond_a
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lⁱⁱ/ﹳٴ;->ˆﾞ:Ljava/lang/Class;

    iput-object v0, p0, Lⁱⁱ/ﹳٴ;->ˆﾞ:Ljava/lang/Class;

    :cond_b
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    :cond_c
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    :cond_d
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p1, Lⁱⁱ/ﹳٴ;->ٴʼ:Z

    iput-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ٴʼ:Z

    :cond_e
    iget v0, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ᵔי:Lʿٴ/ʽ;

    iget-object v1, p1, Lⁱⁱ/ﹳٴ;->ᵔי:Lʿٴ/ʽ;

    invoke-virtual {v0, v1}, Lיـ/ˑﹳ;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lⁱⁱ/ﹳٴ;->ˑٴ:Z

    iput-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˑٴ:Z

    :cond_f
    iget v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    iget v1, p1, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    or-int/2addr v0, v1

    iput v0, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    iget-object v0, p0, Lⁱⁱ/ﹳٴ;->ᵎˊ:Lʼᵔ/ᵔᵢ;

    iget-object p1, p1, Lⁱⁱ/ﹳٴ;->ᵎˊ:Lʼᵔ/ᵔᵢ;

    iget-object v0, v0, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    iget-object p1, p1, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    invoke-virtual {v0, p1}, Lʿٴ/ʽ;->ᵎﹶ(Lיـ/ˑﹳ;)V

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ﾞʻ(Landroid/graphics/drawable/Drawable;)Lⁱⁱ/ﹳٴ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lⁱⁱ/ﹳٴ;->ﾞʻ(Landroid/graphics/drawable/Drawable;)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lⁱⁱ/ﹳٴ;->ᴵᵔ:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    or-int/lit8 p1, p1, 0x40

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ﾞᴵ(Landroid/graphics/drawable/Drawable;)Lⁱⁱ/ﹳٴ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lⁱⁱ/ﹳٴ;->ﾞᴵ(Landroid/graphics/drawable/Drawable;)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lⁱⁱ/ﹳٴ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    or-int/lit8 p1, p1, 0x10

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method
