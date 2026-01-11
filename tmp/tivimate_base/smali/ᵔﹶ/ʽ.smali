.class public final Lᵔﹶ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿʾ/ᵢˏ;
.implements Lʿʾ/ـˆ;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lʿʾ/ᵢˏ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lᵔﹶ/ʽ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lᵔﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    invoke-static {p2, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lᵔﹶ/ʽ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lיᐧ/ﹳٴ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lᵔﹶ/ʽ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {p1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lᵔﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    const-string p1, "BitmapPool must not be null"

    invoke-static {p2, p1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lᵔﹶ/ʽ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public static ˑﹳ(Landroid/graphics/Bitmap;Lיᐧ/ﹳٴ;)Lᵔﹶ/ʽ;
    .locals 1

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lᵔﹶ/ʽ;

    invoke-direct {v0, p0, p1}, Lᵔﹶ/ʽ;-><init>(Landroid/graphics/Bitmap;Lיᐧ/ﹳٴ;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lᵔﹶ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lᵔﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lᵔﹶ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lʿʾ/ᵢˏ;

    invoke-interface {v2}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lᵔﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ʽ()Ljava/lang/Class;
    .locals 1

    .prologue
    iget v0, p0, Lᵔﹶ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0

    :pswitch_0
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ()V
    .locals 2

    .prologue
    iget v0, p0, Lᵔﹶ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᵔﹶ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʿʾ/ᵢˏ;

    invoke-interface {v0}, Lʿʾ/ᵢˏ;->ˈ()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lᵔﹶ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lיᐧ/ﹳٴ;

    iget-object v1, p0, Lᵔﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lיᐧ/ﹳٴ;->ٴﹶ(Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ()I
    .locals 1

    .prologue
    iget v0, p0, Lᵔﹶ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᵔﹶ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʿʾ/ᵢˏ;

    invoke-interface {v0}, Lʿʾ/ᵢˏ;->ⁱˊ()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lᵔﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lʿٴ/ᵔʾ;->ʽ(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget v0, p0, Lᵔﹶ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᵔﹶ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʿʾ/ᵢˏ;

    instance-of v1, v0, Lʿʾ/ـˆ;

    if-eqz v1, :cond_0

    check-cast v0, Lʿʾ/ـˆ;

    invoke-interface {v0}, Lʿʾ/ـˆ;->ﹳٴ()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lᵔﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
