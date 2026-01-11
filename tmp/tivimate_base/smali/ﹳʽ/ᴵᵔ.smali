.class public final Lﹳʽ/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳʽ/ˉٴ;


# instance fields
.field public ʽʽ:Ljava/lang/Object;

.field public ʾˋ:Ljava/lang/Object;

.field public ˈٴ:Ljava/lang/Object;

.field public ˊʻ:Ljava/lang/Object;

.field public ᴵˊ:Ljava/lang/Object;

.field public ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    iput-object p2, p0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    iput-object p4, p0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    iput-object p5, p0, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p6, p0, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʼˎ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const v0, 0x7f04013a

    invoke-static {p0, v0}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f040135

    invoke-static {p0, v1}, Lˉˆ/ˎˉ;->ⁱˊ(Landroid/content/Context;I)I

    move-result p0

    invoke-static {v0, p1}, Lᵎⁱ/ﹳٴ;->ⁱˊ(II)I

    move-result v1

    invoke-static {v0, p1}, Lᵎⁱ/ﹳٴ;->ⁱˊ(II)I

    move-result v0

    const/4 v2, 0x4

    new-array v2, v2, [[I

    sget-object v3, Lˉˆ/ˎˉ;->ⁱˊ:[I

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lˉˆ/ˎˉ;->ˈ:[I

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lˉˆ/ˎˉ;->ʽ:[I

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Lˉˆ/ˎˉ;->ﾞᴵ:[I

    const/4 v4, 0x3

    aput-object v3, v2, v4

    filled-new-array {p0, v1, v0, p1}, [I

    move-result-object p0

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public static ˆʾ(Lʽⁱ/ᵔٴ;Lʼʻ/ᵎⁱ;Lﹳᵢ/ᵢˏ;Lʽⁱ/ˋᵔ;)Lﹳᵢ/ᵢˏ;
    .locals 11

    .prologue
    check-cast p0, Lⁱי/ʼʼ;

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object v0

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v1, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v1, v1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v1}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v3, v1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v1, v1, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v1, v1, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lʽⁱ/ʼˈ;->ﾞʻ(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    :goto_1
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ـʻ()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v1, p3, v2}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    move-result-object v0

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˑˆ()J

    move-result-wide v7

    invoke-static {v7, v8}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v7

    iget-wide v9, p3, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Lʽⁱ/ˋᵔ;->ⁱˊ(J)I

    move-result p3

    :goto_2
    move v10, p3

    goto :goto_4

    :cond_3
    :goto_3
    const/4 p3, -0x1

    goto :goto_2

    :goto_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lﹳᵢ/ᵢˏ;

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ـʻ()Z

    move-result v7

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ﾞˋ()I

    move-result v8

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˈـ()I

    move-result v9

    invoke-static/range {v5 .. v10}, Lﹳʽ/ᴵᵔ;->ᵔʾ(Lﹳᵢ/ᵢˏ;Ljava/lang/Object;ZIII)Z

    move-result p3

    if-eqz p3, :cond_4

    return-object v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ـʻ()Z

    move-result v7

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ﾞˋ()I

    move-result v8

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˈـ()I

    move-result v9

    move-object v5, p2

    invoke-static/range {v5 .. v10}, Lﹳʽ/ᴵᵔ;->ᵔʾ(Lﹳᵢ/ᵢˏ;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v5

    :cond_6
    return-object v4
.end method

.method public static ˈ([II)Z
    .locals 4

    .prologue
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static יـ(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p2, :cond_0

    sget-object p2, Lˉˆ/ˏי;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    invoke-static {p1, p2}, Lˉˆ/ˏי;->ʽ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static ٴﹶ(Lˉˆ/ʼᵢ;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f080070

    invoke-virtual {p0, p1, v0}, Lˉˆ/ʼᵢ;->ﾞᴵ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f080071

    invoke-virtual {p0, p1, v1}, Lˉˆ/ʼᵢ;->ﾞᴵ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-ne p1, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-ne p1, p2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v2

    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p2, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x1020000

    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000f

    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000d

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object p2
.end method

.method public static ᵎﹶ(Landroid/content/Context;Lﹳˎ/ʻٴ;Lˑˋ/ˈ;Lﹳˎ/ﹳٴ;Lˆי/ˑﹳ;Lˉˆ/ˎـ;Lـʾ/ᵔﹳ;Lʾٴ/ⁱˊ;Lˑʼ/ᵎˊ;Lﹳˎ/ʼˎ;Lˈᵔ/ˈ;)Lﹳʽ/ᴵᵔ;
    .locals 6

    new-instance v0, Lﹳˎ/ﹳᐧ;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lﹳˎ/ﹳᐧ;-><init>(Landroid/content/Context;Lﹳˎ/ʻٴ;Lﹳˎ/ﹳٴ;Lـʾ/ᵔﹳ;Lʾٴ/ⁱˊ;)V

    new-instance p3, Lˑˋ/ⁱˊ;

    invoke-direct {p3, p2, p7, p9}, Lˑˋ/ⁱˊ;-><init>(Lˑˋ/ˈ;Lʾٴ/ⁱˊ;Lﹳˎ/ʼˎ;)V

    sget-object p2, Lʽˆ/ﹳٴ;->ⁱˊ:Lˋᵢ/ﹳٴ;

    invoke-static {p0}, Lˉˋ/ʼᐧ;->ⁱˊ(Landroid/content/Context;)V

    invoke-static {}, Lˉˋ/ʼᐧ;->ﹳٴ()Lˉˋ/ʼᐧ;

    move-result-object p0

    new-instance p2, Lٴי/ﹳٴ;

    sget-object p6, Lʽˆ/ﹳٴ;->ʽ:Ljava/lang/String;

    sget-object v1, Lʽˆ/ﹳٴ;->ˈ:Ljava/lang/String;

    invoke-direct {p2, p6, v1}, Lٴי/ﹳٴ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lˉˋ/ʼᐧ;->ʽ(Lˉˋ/ٴﹶ;)Lˉˋ/ˉˆ;

    move-result-object p0

    new-instance p2, Lᴵˆ/ⁱˊ;

    const-string p6, "json"

    invoke-direct {p2, p6}, Lᴵˆ/ⁱˊ;-><init>(Ljava/lang/String;)V

    sget-object p6, Lʽˆ/ﹳٴ;->ˑﹳ:Lʻʿ/ᵔﹳ;

    const-string v1, "FIREBASE_CRASHLYTICS_REPORT"

    invoke-virtual {p0, v1, p2, p6}, Lˉˋ/ˉˆ;->ﹳٴ(Ljava/lang/String;Lᴵˆ/ⁱˊ;Lᴵˆ/ˈ;)Landroidx/leanback/widget/ʻٴ;

    move-result-object p0

    new-instance p2, Lʽˆ/ʽ;

    invoke-virtual {p7}, Lʾٴ/ⁱˊ;->ⁱˊ()Lʾٴ/ﹳٴ;

    move-result-object p6

    invoke-direct {p2, p0, p6, p8}, Lʽˆ/ʽ;-><init>(Landroidx/leanback/widget/ʻٴ;Lʾٴ/ﹳٴ;Lˑʼ/ᵎˊ;)V

    new-instance p0, Lʽˆ/ﹳٴ;

    invoke-direct {p0, p2}, Lʽˆ/ﹳٴ;-><init>(Lʽˆ/ʽ;)V

    new-instance p2, Lﹳʽ/ᴵᵔ;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    iput-object p3, p2, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    iput-object p0, p2, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    iput-object p4, p2, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    iput-object p5, p2, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p1, p2, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    return-object p2
.end method

.method public static ᵔʾ(Lﹳᵢ/ᵢˏ;Ljava/lang/Object;ZIII)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget v1, p0, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    if-ne v1, p3, :cond_1

    iget p1, p0, Lﹳᵢ/ᵢˏ;->ʽ:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    const/4 p1, -0x1

    if-ne v1, p1, :cond_3

    iget p0, p0, Lﹳᵢ/ᵢˏ;->ˑﹳ:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;
    .locals 7

    .prologue
    sget-object v0, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    if-ne p3, v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type raw should not have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p4, :cond_2

    :goto_0
    invoke-static {p0}, Lﹳʽ/ᵔי;->ﹳٴ(Ljava/lang/String;)Lʾᐧ/ﹳٴ;

    move-result-object v2

    new-instance v0, Lﹳʽ/ᴵᵔ;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lﹳʽ/ᴵᵔ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type different from raw should have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ⁱˊ(Lˈˋ/ˑٴ;Lˉˆ/ˎـ;)Lˈˋ/ﹶ;
    .locals 7

    .prologue
    iget-object p1, p1, Lˉˆ/ˎـ;->ﾞᴵ:Ljava/lang/Object;

    check-cast p1, Lʽᴵ/ʾᵎ;

    invoke-virtual {p1}, Lʽᴵ/ʾᵎ;->ⁱˊ()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˆי/ᵔʾ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lˈˋ/ˏᵢ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    check-cast v2, Lˆי/ⁱˊ;

    iget-object v4, v2, Lˆי/ⁱˊ;->ˑﹳ:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v5, v2, Lˆי/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    if-eqz v5, :cond_2

    new-instance v6, Lˈˋ/ʻᵎ;

    invoke-direct {v6, v5, v4}, Lˈˋ/ʻᵎ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v3, Lˈˋ/ˏᵢ;->ﹳٴ:Lˈˋ/ʻᵎ;

    iget-object v4, v2, Lˆי/ⁱˊ;->ʽ:Ljava/lang/String;

    if-eqz v4, :cond_1

    iput-object v4, v3, Lˈˋ/ˏᵢ;->ⁱˊ:Ljava/lang/String;

    iget-object v4, v2, Lˆי/ⁱˊ;->ˈ:Ljava/lang/String;

    if-eqz v4, :cond_0

    iput-object v4, v3, Lˈˋ/ˏᵢ;->ʽ:Ljava/lang/String;

    iget-wide v4, v2, Lˆי/ⁱˊ;->ﾞᴵ:J

    iput-wide v4, v3, Lˈˋ/ˏᵢ;->ˈ:J

    iget-byte v2, v3, Lˈˋ/ˏᵢ;->ˑﹳ:B

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, v3, Lˈˋ/ˏᵢ;->ˑﹳ:B

    invoke-virtual {v3}, Lˈˋ/ˏᵢ;->ﹳٴ()Lˈˋ/ᴵʼ;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null parameterValue"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null parameterKey"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null rolloutId"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null variantId"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lˈˋ/ˑٴ;->ﹳٴ()Lˈˋ/ˈʿ;

    move-result-object p0

    new-instance p1, Lˈˋ/ˊᵔ;

    invoke-direct {p1, v0}, Lˈˋ/ˊᵔ;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lˈˋ/ˈʿ;->ﾞᴵ:Lˈˋ/ʻʿ;

    invoke-virtual {p0}, Lˈˋ/ˈʿ;->ﹳٴ()Lˈˋ/ˑٴ;

    move-result-object p0

    return-object p0
.end method

.method public static ﹳٴ(Lˈˋ/ˑٴ;Lˆי/ˑﹳ;Lˉˆ/ˎـ;Ljava/util/Map;)Lˈˋ/ˑٴ;
    .locals 9

    .prologue
    invoke-virtual {p0}, Lˈˋ/ˑٴ;->ﹳٴ()Lˈˋ/ˈʿ;

    move-result-object v0

    iget-object p1, p1, Lˆי/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˆי/ʽ;

    invoke-interface {p1}, Lˆי/ʽ;->ᵔᵢ()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FirebaseCrashlytics"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Lˈˋ/ᐧᴵ;

    invoke-direct {v3, p1}, Lˈˋ/ᐧᴵ;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lˈˋ/ˈʿ;->ˑﹳ:Lˈˋ/ʿـ;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "No log data to include with this event."

    nop

    :cond_1
    :goto_0
    iget-object p1, p2, Lˉˆ/ˎـ;->ˈ:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/ʼˎ;

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p1, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˆי/ˈ;

    invoke-virtual {p1}, Lˆי/ˈ;->ﹳٴ()Ljava/util/Map;

    move-result-object p1

    goto :goto_3

    :cond_2
    iget-object p1, p1, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˆי/ˈ;

    invoke-virtual {p1}, Lˆי/ˈ;->ﹳٴ()Ljava/util/Map;

    move-result-object p1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x400

    invoke-static {v6, v5}, Lˆי/ˈ;->ⁱˊ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    const/16 v8, 0x40

    if-lt v7, v8, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lˆי/ˈ;->ⁱˊ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    if-lez p3, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Ignored "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " keys when adding event specific keys. Maximum allowable: 1024"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_6
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lﹳʽ/ᴵᵔ;->ﾞʻ(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    iget-object p1, p2, Lˉˆ/ˎـ;->ˑﹳ:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/ʼˎ;

    iget-object p1, p1, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˆי/ˈ;

    invoke-virtual {p1}, Lˆי/ˈ;->ﹳٴ()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lﹳʽ/ᴵᵔ;->ﾞʻ(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p0, p0, Lˈˋ/ˑٴ;->ʽ:Lˈˋ/ـˊ;

    check-cast p0, Lˈˋ/ˋᵔ;

    iget-object v2, p0, Lˈˋ/ˋᵔ;->ﹳٴ:Lˈˋ/ˊˋ;

    iget-object v5, p0, Lˈˋ/ˋᵔ;->ˈ:Ljava/lang/Boolean;

    iget-object v6, p0, Lˈˋ/ˋᵔ;->ˑﹳ:Lˈˋ/ʻᴵ;

    iget-object v7, p0, Lˈˋ/ˋᵔ;->ﾞᴵ:Ljava/util/List;

    iget v8, p0, Lˈˋ/ˋᵔ;->ᵎﹶ:I

    new-instance v1, Lˈˋ/ˋᵔ;

    invoke-direct/range {v1 .. v8}, Lˈˋ/ˋᵔ;-><init>(Lˈˋ/ˊˋ;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lˈˋ/ʻᴵ;Ljava/util/List;I)V

    iput-object v1, v0, Lˈˋ/ˈʿ;->ʽ:Lˈˋ/ـˊ;

    :cond_8
    invoke-virtual {v0}, Lˈˋ/ˈʿ;->ﹳٴ()Lˈˋ/ˑٴ;

    move-result-object p0

    return-object p0
.end method

.method public static ﾞʻ(Ljava/util/Map;)Ljava/util/List;
    .locals 4

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v3, Lˈˋ/ˊʻ;

    invoke-direct {v3, v2, v1}, Lˈˋ/ˊʻ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null value"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null key"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/parse/ʼᐧ;

    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/parse/ʼᐧ;-><init>(I)V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static ﾞᴵ(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x2000

    :try_start_1
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method


# virtual methods
.method public ʼᐧ(I)V
    .locals 3

    .prologue
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    return-void
.end method

.method public ʽ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ᵢˏ;Lʽⁱ/ʼˈ;)V
    .locals 2

    .prologue
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p3, p0, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast p3, Lʼʻ/ᴵʼ;

    invoke-virtual {p3, p2}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lʽⁱ/ʼˈ;

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ʽﹳ(Lʽⁱ/ʼˈ;)V
    .locals 3

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(I)V

    iget-object v1, p0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʼʻ/ᵎⁱ;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    invoke-virtual {p0, v0, v1, p1}, Lﹳʽ/ᴵᵔ;->ʽ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ᵢˏ;Lʽⁱ/ʼˈ;)V

    iget-object v1, p0, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    iget-object v2, p0, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lﹳᵢ/ᵢˏ;

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    invoke-virtual {p0, v0, v1, p1}, Lﹳʽ/ᴵᵔ;->ʽ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ᵢˏ;Lʽⁱ/ʼˈ;)V

    :cond_0
    iget-object v1, p0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    iget-object v2, p0, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lﹳᵢ/ᵢˏ;

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    iget-object v2, p0, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v2, Lﹳᵢ/ᵢˏ;

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    invoke-virtual {p0, v0, v1, p1}, Lﹳʽ/ᴵᵔ;->ʽ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ᵢˏ;Lʽⁱ/ʼˈ;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʼʻ/ᵎⁱ;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʼʻ/ᵎⁱ;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹳᵢ/ᵢˏ;

    invoke-virtual {p0, v0, v2, p1}, Lﹳʽ/ᴵᵔ;->ʽ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ᵢˏ;Lʽⁱ/ʼˈ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʼʻ/ᵎⁱ;

    iget-object v2, p0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lﹳᵢ/ᵢˏ;

    invoke-virtual {v1, v2}, Lʼʻ/ᵎⁱ;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    invoke-virtual {p0, v0, v1, p1}, Lﹳʽ/ᴵᵔ;->ʽ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ᵢˏ;Lʽⁱ/ʼˈ;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˑﹳ()Lʼʻ/ᴵʼ;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public ˉʿ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const v0, 0x7f080045

    if-ne p2, v0, :cond_0

    const p2, 0x7f060015

    invoke-static {p1, p2}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x7f080073

    if-ne p2, v0, :cond_1

    const p2, 0x7f060018

    invoke-static {p1, p2}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_1
    const v0, 0x7f080072

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    const/4 p2, 0x3

    new-array v0, p2, [[I

    new-array p2, p2, [I

    const v2, 0x7f04017a

    invoke-static {p1, v2}, Lˉˆ/ˎˉ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x2

    const v5, 0x7f040139

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v2, Lˉˆ/ˎˉ;->ⁱˊ:[I

    aput-object v2, v0, v1

    invoke-virtual {v3, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, p2, v1

    sget-object v1, Lˉˆ/ˎˉ;->ˑﹳ:[I

    aput-object v1, v0, v6

    invoke-static {p1, v5}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result p1

    aput p1, p2, v6

    sget-object p1, Lˉˆ/ˎˉ;->ﾞᴵ:[I

    aput-object p1, v0, v4

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, p2, v4

    goto :goto_0

    :cond_2
    sget-object v3, Lˉˆ/ˎˉ;->ⁱˊ:[I

    aput-object v3, v0, v1

    invoke-static {p1, v2}, Lˉˆ/ˎˉ;->ⁱˊ(Landroid/content/Context;I)I

    move-result v3

    aput v3, p2, v1

    sget-object v1, Lˉˆ/ˎˉ;->ˑﹳ:[I

    aput-object v1, v0, v6

    invoke-static {p1, v5}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result v1

    aput v1, p2, v6

    sget-object v1, Lˉˆ/ˎˉ;->ﾞᴵ:[I

    aput-object v1, v0, v4

    invoke-static {p1, v2}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result p1

    aput p1, p2, v4

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1

    :cond_3
    const v0, 0x7f080039

    if-ne p2, v0, :cond_4

    const p2, 0x7f040135

    invoke-static {p1, p2}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Lﹳʽ/ᴵᵔ;->ʼˎ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_4
    const v0, 0x7f080033

    if-ne p2, v0, :cond_5

    invoke-static {p1, v1}, Lﹳʽ/ᴵᵔ;->ʼˎ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_5
    const v0, 0x7f080038

    if-ne p2, v0, :cond_6

    const p2, 0x7f04012e

    invoke-static {p1, p2}, Lˉˆ/ˎˉ;->ʽ(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Lﹳʽ/ᴵᵔ;->ʼˎ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_6
    const v0, 0x7f08006e

    if-eq p2, v0, :cond_c

    const v0, 0x7f08006f

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, Lﹳʽ/ᴵᵔ;->ˈ([II)Z

    move-result v0

    if-eqz v0, :cond_8

    const p2, 0x7f04013b

    invoke-static {p1, p2}, Lˉˆ/ˎˉ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, Lﹳʽ/ᴵᵔ;->ˈ([II)Z

    move-result v0

    if-eqz v0, :cond_9

    const p2, 0x7f060014

    invoke-static {p1, p2}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, Lﹳʽ/ᴵᵔ;->ˈ([II)Z

    move-result v0

    if-eqz v0, :cond_a

    const p2, 0x7f060013

    invoke-static {p1, p2}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_a
    const v0, 0x7f08006b

    if-ne p2, v0, :cond_b

    const p2, 0x7f060016

    invoke-static {p1, p2}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1

    :cond_c
    :goto_1
    const p2, 0x7f060017

    invoke-static {p1, p2}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public ˉˆ(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lˏـ/ˉʿ;
    .locals 19

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑˋ/ⁱˊ;

    invoke-virtual {v0}, Lˑˋ/ⁱˊ;->ⁱˊ()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    if-ge v0, v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    check-cast v7, Ljava/io/File;

    :try_start_0
    sget-object v0, Lˑˋ/ⁱˊ;->ᵎﹶ:Lˋᵢ/ﹳٴ;

    invoke-static {v7}, Lˑˋ/ⁱˊ;->ˑﹳ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lˋᵢ/ﹳٴ;->ʼˎ(Ljava/lang/String;)Lˈˋ/ᴵˊ;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lﹳˎ/ⁱˊ;

    invoke-direct {v10, v0, v9, v7}, Lﹳˎ/ⁱˊ;-><init>(Lˈˋ/ᴵˊ;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not load report file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; deleting"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "FirebaseCrashlytics"

    nop

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v6

    :goto_2
    if-ge v5, v3, :cond_9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lﹳˎ/ⁱˊ;

    if-eqz v2, :cond_2

    iget-object v8, v7, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_3

    :cond_1
    move-object/from16 v13, p1

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v8, v1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Lʽˆ/ﹳٴ;

    iget-object v9, v7, Lﹳˎ/ⁱˊ;->ﹳٴ:Lˈˋ/ᴵˊ;

    iget-object v10, v9, Lˈˋ/ᴵˊ;->ﾞᴵ:Ljava/lang/String;

    const/4 v11, 0x1

    if-eqz v10, :cond_4

    iget-object v9, v9, Lˈˋ/ᴵˊ;->ᵎﹶ:Ljava/lang/String;

    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    move-object v15, v7

    goto :goto_5

    :cond_4
    :goto_4
    iget-object v9, v1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v9, Lﹳˎ/ʻٴ;

    invoke-virtual {v9, v11}, Lﹳˎ/ʻٴ;->ⁱˊ(Z)Lﹳˎ/ʽﹳ;

    move-result-object v9

    iget-object v10, v7, Lﹳˎ/ⁱˊ;->ﹳٴ:Lˈˋ/ᴵˊ;

    iget-object v12, v9, Lﹳˎ/ʽﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v10}, Lˈˋ/ᴵˊ;->ﹳٴ()Lˈˋ/ʾˋ;

    move-result-object v10

    iput-object v12, v10, Lˈˋ/ʾˋ;->ˑﹳ:Ljava/lang/String;

    invoke-virtual {v10}, Lˈˋ/ʾˋ;->ﹳٴ()Lˈˋ/ᴵˊ;

    move-result-object v10

    iget-object v9, v9, Lﹳˎ/ʽﹳ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v10}, Lˈˋ/ᴵˊ;->ﹳٴ()Lˈˋ/ʾˋ;

    move-result-object v10

    iput-object v9, v10, Lˈˋ/ʾˋ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v10}, Lˈˋ/ʾˋ;->ﹳٴ()Lˈˋ/ᴵˊ;

    move-result-object v9

    iget-object v10, v7, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    iget-object v7, v7, Lﹳˎ/ⁱˊ;->ʽ:Ljava/io/File;

    new-instance v12, Lﹳˎ/ⁱˊ;

    invoke-direct {v12, v9, v10, v7}, Lﹳˎ/ⁱˊ;-><init>(Lˈˋ/ᴵˊ;Ljava/lang/String;Ljava/io/File;)V

    move-object v15, v12

    :goto_5
    if-eqz v2, :cond_5

    goto :goto_6

    :cond_5
    move v11, v6

    :goto_6
    iget-object v14, v8, Lʽˆ/ﹳٴ;->ﹳٴ:Lʽˆ/ʽ;

    const-string v7, "Dropping report due to queue being full: "

    const-string v8, "Closing task for report: "

    const-string v9, "Queue size: "

    const-string v10, "Enqueueing report: "

    iget-object v12, v14, Lʽˆ/ʽ;->ﾞᴵ:Ljava/util/concurrent/ArrayBlockingQueue;

    monitor-enter v12

    :try_start_1
    new-instance v16, Lˏـ/ᵎﹶ;

    invoke-direct/range {v16 .. v16}, Lˏـ/ᵎﹶ;-><init>()V

    if-eqz v11, :cond_8

    iget-object v11, v14, Lʽˆ/ʽ;->ʼˎ:Lˑʼ/ᵎˊ;

    iget-object v11, v11, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v11, v14, Lʽˆ/ʽ;->ﾞᴵ:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v11}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v11

    iget v13, v14, Lʽˆ/ʽ;->ˑﹳ:I

    if-ge v11, v13, :cond_6

    sget-object v7, Lיˎ/ʽ;->ﹳٴ:Lיˎ/ʽ;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v15, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lיˎ/ʽ;->ⁱˊ(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v14, Lʽˆ/ʽ;->ﾞᴵ:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lיˎ/ʽ;->ⁱˊ(Ljava/lang/String;)V

    iget-object v9, v14, Lʽˆ/ʽ;->ᵎﹶ:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v13, Lʼٴ/ـˆ;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v18}, Lʼٴ/ـˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    move-object/from16 v10, v16

    invoke-virtual {v9, v13}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v15, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lיˎ/ʽ;->ⁱˊ(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    monitor-exit v12

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_6
    move-object/from16 v10, v16

    invoke-virtual {v14}, Lʽˆ/ʽ;->ﹳٴ()I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v15, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FirebaseCrashlytics"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "FirebaseCrashlytics"

    const/4 v9, 0x0

    nop

    :cond_7
    iget-object v7, v14, Lʽˆ/ʽ;->ʼˎ:Lˑʼ/ᵎˊ;

    iget-object v7, v7, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-virtual {v10, v15}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    monitor-exit v12

    goto :goto_7

    :cond_8
    move-object/from16 v10, v16

    invoke-virtual {v14, v15, v10}, Lʽˆ/ʽ;->ⁱˊ(Lﹳˎ/ⁱˊ;Lˏـ/ᵎﹶ;)V

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    iget-object v7, v10, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    new-instance v8, Lᵔﹶ/ˉʿ;

    const/16 v9, 0x19

    invoke-direct {v8, v9, v1}, Lᵔﹶ/ˉʿ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lˏـ/ˉʿ;

    invoke-direct {v9}, Lˏـ/ˉʿ;-><init>()V

    new-instance v10, Lˏـ/ˆʾ;

    const/4 v11, 0x0

    move-object/from16 v13, p1

    invoke-direct {v10, v13, v8, v9, v11}, Lˏـ/ˆʾ;-><init>(Ljava/util/concurrent/Executor;Lˏـ/ﹳٴ;Lˏـ/ˉʿ;I)V

    iget-object v8, v7, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʼˎ(Lˏـ/ﾞʻ;)V

    invoke-virtual {v7}, Lˏـ/ˉʿ;->ᵔʾ()V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :goto_8
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ᵎ;->ʻٴ(Ljava/util/List;)Lˏـ/ˉʿ;

    move-result-object v0

    return-object v0
.end method

.method public ˏי(I)V
    .locals 3

    .prologue
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid tag size in bytes %d; must be at least 10 bytes"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˑﹳ()Lיʻ/ٴﹶ;
    .locals 13

    .prologue
    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lיʻ/ˆʾ;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lיʻ/ˆʾ;

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lיʻ/ˆʾ;

    sget-object v3, Lיʻ/ˆʾ;->ʽ:Lיʻ/ˆʾ;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object v3, Lיʻ/ˆʾ;->ˈ:Lיʻ/ˆʾ;

    if-ne v2, v3, :cond_3

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    sget-object v3, Lיʻ/ˆʾ;->ˑﹳ:Lיʻ/ˆʾ;

    if-ne v2, v3, :cond_5

    const/16 v2, 0x20

    if-gt v1, v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    sget-object v3, Lיʻ/ˆʾ;->ﾞᴵ:Lיʻ/ˆʾ;

    if-ne v2, v3, :cond_7

    const/16 v2, 0x30

    if-gt v1, v2, :cond_6

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    sget-object v3, Lיʻ/ˆʾ;->ᵎﹶ:Lיʻ/ˆʾ;

    if-ne v2, v3, :cond_9

    const/16 v2, 0x40

    if-gt v1, v2, :cond_8

    :goto_0
    new-instance v6, Lיʻ/ٴﹶ;

    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lיʻ/ˆʾ;

    iget-object v0, p0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lיʻ/ˆʾ;

    invoke-direct/range {v6 .. v12}, Lיʻ/ٴﹶ;-><init>(IIIILיʻ/ˆʾ;Lיʻ/ˆʾ;)V

    return-object v6

    :cond_8
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "iv size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HMAC key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ᵔﹳ(I)V
    .locals 3

    .prologue
    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid key size in bytes %d; HMAC key must be at least 16 bytes"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ﹳᐧ(I)V
    .locals 3

    .prologue
    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
