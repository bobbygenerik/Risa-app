.class public final Lˉˈ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿʾ/ᵢˏ;
.implements Lʿʾ/ـˆ;


# instance fields
.field public final ʾˋ:Landroid/graphics/drawable/Drawable;

.field public final synthetic ᴵˊ:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    iput p2, p0, Lˉˈ/ˑﹳ;->ᴵˊ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "Argument must not be null"

    invoke-static {p1, p2}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lˉˈ/ˑﹳ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private final ˑﹳ()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lˉˈ/ˑﹳ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Ljava/lang/Class;
    .locals 1

    .prologue
    iget v0, p0, Lˉˈ/ˑﹳ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lᴵﹶ/ⁱˊ;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˉˈ/ˑﹳ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ()V
    .locals 7

    .prologue
    iget v0, p0, Lˉˈ/ˑﹳ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉˈ/ˑﹳ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lᴵﹶ/ⁱˊ;

    invoke-virtual {v0}, Lᴵﹶ/ⁱˊ;->stop()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lᴵﹶ/ⁱˊ;->ˈٴ:Z

    iget-object v0, v0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v0, v0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᴵﹶ/ﾞᴵ;

    iget-object v2, v0, Lᴵﹶ/ﾞᴵ;->ˈ:Lcom/bumptech/glide/ᵔʾ;

    iget-object v3, v0, Lᴵﹶ/ﾞᴵ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lᴵﹶ/ﾞᴵ;->ﾞʻ:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v5, v0, Lᴵﹶ/ﾞᴵ;->ˑﹳ:Lיᐧ/ﹳٴ;

    invoke-interface {v5, v3}, Lיᐧ/ﹳٴ;->ٴﹶ(Landroid/graphics/Bitmap;)V

    iput-object v4, v0, Lᴵﹶ/ﾞᴵ;->ﾞʻ:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, v0, Lᴵﹶ/ﾞᴵ;->ﾞᴵ:Z

    iget-object v3, v0, Lᴵﹶ/ﾞᴵ;->ʼˎ:Lᴵﹶ/ˈ;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/ᵔʾ;->ﾞʻ(Lʾˎ/ˑﹳ;)V

    iput-object v4, v0, Lᴵﹶ/ﾞᴵ;->ʼˎ:Lᴵﹶ/ˈ;

    :cond_1
    iget-object v3, v0, Lᴵﹶ/ﾞᴵ;->ٴﹶ:Lᴵﹶ/ˈ;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/ᵔʾ;->ﾞʻ(Lʾˎ/ˑﹳ;)V

    iput-object v4, v0, Lᴵﹶ/ﾞᴵ;->ٴﹶ:Lᴵﹶ/ˈ;

    :cond_2
    iget-object v3, v0, Lᴵﹶ/ﾞᴵ;->ˉʿ:Lᴵﹶ/ˈ;

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/ᵔʾ;->ﾞʻ(Lʾˎ/ˑﹳ;)V

    iput-object v4, v0, Lᴵﹶ/ﾞᴵ;->ˉʿ:Lᴵﹶ/ˈ;

    :cond_3
    iget-object v2, v0, Lᴵﹶ/ﾞᴵ;->ﹳٴ:Lᵢٴ/ˈ;

    iget-object v3, v2, Lᵢٴ/ˈ;->ʽ:Lـʾ/ᵔﹳ;

    iput-object v4, v2, Lᵢٴ/ˈ;->ﾞʻ:Lᵢٴ/ⁱˊ;

    iget-object v5, v2, Lᵢٴ/ˈ;->ʼˎ:[B

    if-eqz v5, :cond_5

    iget-object v6, v3, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lיᐧ/ﾞᴵ;

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v5}, Lיᐧ/ﾞᴵ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    iget-object v5, v2, Lᵢٴ/ˈ;->ˆʾ:[I

    if-eqz v5, :cond_7

    iget-object v6, v3, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lיᐧ/ﾞᴵ;

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v5}, Lיᐧ/ﾞᴵ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    iget-object v5, v2, Lᵢٴ/ˈ;->ˉʿ:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_8

    iget-object v6, v3, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, Lיᐧ/ﹳٴ;

    invoke-interface {v6, v5}, Lיᐧ/ﹳٴ;->ٴﹶ(Landroid/graphics/Bitmap;)V

    :cond_8
    iput-object v4, v2, Lᵢٴ/ˈ;->ˉʿ:Landroid/graphics/Bitmap;

    iput-object v4, v2, Lᵢٴ/ˈ;->ˈ:Ljava/nio/ByteBuffer;

    iput-object v4, v2, Lᵢٴ/ˈ;->יـ:Ljava/lang/Boolean;

    iget-object v2, v2, Lᵢٴ/ˈ;->ˑﹳ:[B

    if-eqz v2, :cond_a

    iget-object v3, v3, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lיᐧ/ﾞᴵ;

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v3, v2}, Lיᐧ/ﾞᴵ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_a
    :goto_2
    iput-boolean v1, v0, Lᴵﹶ/ﾞᴵ;->ˆʾ:Z

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ()I
    .locals 4

    .prologue
    iget v0, p0, Lˉˈ/ˑﹳ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉˈ/ˑﹳ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lᴵﹶ/ⁱˊ;

    iget-object v0, v0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v0, v0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᴵﹶ/ﾞᴵ;

    iget-object v1, v0, Lᴵﹶ/ﾞᴵ;->ﹳٴ:Lᵢٴ/ˈ;

    iget-object v2, v1, Lᵢٴ/ˈ;->ˈ:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, v1, Lᵢٴ/ˈ;->ʼˎ:[B

    array-length v3, v3

    add-int/2addr v2, v3

    iget-object v1, v1, Lᵢٴ/ˈ;->ˆʾ:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v2

    iget v0, v0, Lᴵﹶ/ﾞᴵ;->ᵔʾ:I

    add-int/2addr v1, v0

    return v1

    :pswitch_0
    iget-object v0, p0, Lˉˈ/ˑﹳ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ()V
    .locals 2

    .prologue
    iget v0, p0, Lˉˈ/ˑﹳ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉˈ/ˑﹳ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lᴵﹶ/ⁱˊ;

    if-eqz v1, :cond_1

    check-cast v0, Lᴵﹶ/ⁱˊ;

    iget-object v0, v0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v0, v0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᴵﹶ/ﾞᴵ;

    iget-object v0, v0, Lᴵﹶ/ﾞᴵ;->ﾞʻ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lˉˈ/ˑﹳ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lᴵﹶ/ⁱˊ;

    iget-object v0, v0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v0, v0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᴵﹶ/ﾞᴵ;

    iget-object v0, v0, Lᴵﹶ/ﾞᴵ;->ﾞʻ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
