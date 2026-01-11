.class public abstract Lˋᵔ/ـﹶ;
.super Lˋᵔ/ᵎʻ;
.source "SourceFile"


# static fields
.field public static ʼˎ:Z

.field public static ˆʾ:Ljava/lang/reflect/Method;

.field public static ˉʿ:Ljava/lang/reflect/Field;

.field public static ٴﹶ:Ljava/lang/Class;

.field public static ﾞʻ:Ljava/lang/reflect/Field;


# instance fields
.field public final ʽ:Landroid/view/WindowInsets;

.field public ˈ:[Lᵎⁱ/ⁱˊ;

.field public ˑﹳ:Lᵎⁱ/ⁱˊ;

.field public ᵎﹶ:Lᵎⁱ/ⁱˊ;

.field public ᵔᵢ:I

.field public ﾞᴵ:Lˋᵔ/ᐧﹶ;


# direct methods
.method public constructor <init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lˋᵔ/ᵎʻ;-><init>(Lˋᵔ/ᐧﹶ;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lˋᵔ/ـﹶ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    iput-object p2, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    return-void
.end method

.method private ʻٴ()Lᵎⁱ/ⁱˊ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˋᵔ/ـﹶ;->ﾞᴵ:Lˋᵔ/ᐧﹶ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v0}, Lˋᵔ/ᵎʻ;->ʼˎ()Lᵎⁱ/ⁱˊ;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lᵎⁱ/ⁱˊ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    return-object v0
.end method

.method private static ʾᵎ()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lˋᵔ/ـﹶ;->ˆʾ:Ljava/lang/reflect/Method;

    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lˋᵔ/ـﹶ;->ٴﹶ:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lˋᵔ/ـﹶ;->ﾞʻ:Ljava/lang/reflect/Field;

    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lˋᵔ/ـﹶ;->ˉʿ:Ljava/lang/reflect/Field;

    sget-object v1, Lˋᵔ/ـﹶ;->ﾞʻ:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v1, Lˋᵔ/ـﹶ;->ˉʿ:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowInsetsCompat"

    nop

    :goto_0
    sput-boolean v0, Lˋᵔ/ـﹶ;->ʼˎ:Z

    return-void
.end method

.method private ˏי(IZ)Lᵎⁱ/ⁱˊ;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    sget-object v0, Lᵎⁱ/ⁱˊ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p2}, Lˋᵔ/ـﹶ;->ʽﹳ(IZ)Lᵎⁱ/ⁱˊ;

    move-result-object v2

    invoke-static {v0, v2}, Lᵎⁱ/ⁱˊ;->ﹳٴ(Lᵎⁱ/ⁱˊ;Lᵎⁱ/ⁱˊ;)Lᵎⁱ/ⁱˊ;

    move-result-object v0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private ـˆ(Landroid/view/View;)Lᵎⁱ/ⁱˊ;
    .locals 5

    .prologue
    const-string v0, "WindowInsetsCompat"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_4

    sget-boolean v1, Lˋᵔ/ـﹶ;->ʼˎ:Z

    if-nez v1, :cond_0

    invoke-static {}, Lˋᵔ/ـﹶ;->ʾᵎ()V

    :cond_0
    sget-object v1, Lˋᵔ/ـﹶ;->ˆʾ:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    sget-object v3, Lˋᵔ/ـﹶ;->ٴﹶ:Ljava/lang/Class;

    if-eqz v3, :cond_3

    sget-object v3, Lˋᵔ/ـﹶ;->ﾞʻ:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    nop

    return-object v2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    sget-object v1, Lˋᵔ/ـﹶ;->ˉʿ:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lˋᵔ/ـﹶ;->ﾞʻ:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3, v4, p1}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ᵢˏ(II)Z
    .locals 0

    .prologue
    and-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    invoke-super {p0, p1}, Lˋᵔ/ᵎʻ;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lˋᵔ/ـﹶ;

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ᵎﹶ:Lᵎⁱ/ⁱˊ;

    iget-object v2, p1, Lˋᵔ/ـﹶ;->ᵎﹶ:Lᵎⁱ/ⁱˊ;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lˋᵔ/ـﹶ;->ᵔᵢ:I

    iget p1, p1, Lˋᵔ/ـﹶ;->ᵔᵢ:I

    invoke-static {v0, p1}, Lˋᵔ/ـﹶ;->ᵢˏ(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public ʼʼ(Lᵎⁱ/ⁱˊ;)V
    .locals 0

    iput-object p1, p0, Lˋᵔ/ـﹶ;->ᵎﹶ:Lᵎⁱ/ⁱˊ;

    return-void
.end method

.method public ʼᐧ([Lᵎⁱ/ⁱˊ;)V
    .locals 0

    iput-object p1, p0, Lˋᵔ/ـﹶ;->ˈ:[Lᵎⁱ/ⁱˊ;

    return-void
.end method

.method public ʽﹳ(IZ)Lᵎⁱ/ⁱˊ;
    .locals 5

    .prologue
    const/4 v0, 0x1

    sget-object v1, Lᵎⁱ/ⁱˊ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_12

    const/4 v0, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_d

    const/16 p2, 0x8

    if-eq p1, p2, :cond_9

    const/16 p2, 0x10

    if-eq p1, p2, :cond_8

    const/16 p2, 0x20

    if-eq p1, p2, :cond_7

    const/16 p2, 0x40

    if-eq p1, p2, :cond_6

    const/16 p2, 0x80

    if-eq p1, p2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, p0, Lˋᵔ/ـﹶ;->ﾞᴵ:Lˋᵔ/ᐧﹶ;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {p1}, Lˋᵔ/ᵎʻ;->ˑﹳ()Lˋᵔ/ˆʾ;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ˑﹳ()Lˋᵔ/ˆʾ;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_14

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_2

    iget-object v1, p1, Lˋᵔ/ˆʾ;->ﹳٴ:Landroid/view/DisplayCutout;

    invoke-static {v1}, Lʼᐧ/ʽ;->ᵔᵢ(Landroid/view/DisplayCutout;)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-lt p2, v0, :cond_3

    iget-object v3, p1, Lˋᵔ/ˆʾ;->ﹳٴ:Landroid/view/DisplayCutout;

    invoke-static {v3}, Lʼᐧ/ʽ;->ˆʾ(Landroid/view/DisplayCutout;)I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-lt p2, v0, :cond_4

    iget-object v4, p1, Lˋᵔ/ˆʾ;->ﹳٴ:Landroid/view/DisplayCutout;

    invoke-static {v4}, Lʼᐧ/ʽ;->ʼˎ(Landroid/view/DisplayCutout;)I

    move-result v4

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    if-lt p2, v0, :cond_5

    iget-object p1, p1, Lˋᵔ/ˆʾ;->ﹳٴ:Landroid/view/DisplayCutout;

    invoke-static {p1}, Lʼᐧ/ʽ;->ᵎﹶ(Landroid/view/DisplayCutout;)I

    move-result v2

    :cond_5
    invoke-static {v1, v3, v4, v2}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ﾞʻ()Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ᵔᵢ()Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ˆʾ()Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p1, p0, Lˋᵔ/ـﹶ;->ˈ:[Lᵎⁱ/ⁱˊ;

    if-eqz p1, :cond_a

    invoke-static {p2}, Lˉᵎ/ⁱˊ;->ʽʽ(I)I

    move-result p2

    aget-object v0, p1, p2

    :cond_a
    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lˋᵔ/ـﹶ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object p1

    invoke-direct {p0}, Lˋᵔ/ـﹶ;->ʻٴ()Lᵎⁱ/ⁱˊ;

    move-result-object p2

    iget p1, p1, Lᵎⁱ/ⁱˊ;->ˈ:I

    iget v0, p2, Lᵎⁱ/ⁱˊ;->ˈ:I

    if-le p1, v0, :cond_c

    invoke-static {v2, v2, v2, p1}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1

    :cond_c
    iget-object p1, p0, Lˋᵔ/ـﹶ;->ᵎﹶ:Lᵎⁱ/ⁱˊ;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v1}, Lᵎⁱ/ⁱˊ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lˋᵔ/ـﹶ;->ᵎﹶ:Lᵎⁱ/ⁱˊ;

    iget p1, p1, Lᵎⁱ/ⁱˊ;->ˈ:I

    iget p2, p2, Lᵎⁱ/ⁱˊ;->ˈ:I

    if-le p1, p2, :cond_14

    invoke-static {v2, v2, v2, p1}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1

    :cond_d
    if-eqz p2, :cond_e

    invoke-direct {p0}, Lˋᵔ/ـﹶ;->ʻٴ()Lᵎⁱ/ⁱˊ;

    move-result-object p1

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ʼˎ()Lᵎⁱ/ⁱˊ;

    move-result-object p2

    iget v0, p1, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    iget v1, p2, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Lᵎⁱ/ⁱˊ;->ʽ:I

    iget v3, p2, Lᵎⁱ/ⁱˊ;->ʽ:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p1, p1, Lᵎⁱ/ⁱˊ;->ˈ:I

    iget p2, p2, Lᵎⁱ/ⁱˊ;->ˈ:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, v2, v1, p1}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1

    :cond_e
    iget p1, p0, Lˋᵔ/ـﹶ;->ᵔᵢ:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Lˋᵔ/ـﹶ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object p1

    iget-object p2, p0, Lˋᵔ/ـﹶ;->ﾞᴵ:Lˋᵔ/ᐧﹶ;

    if-eqz p2, :cond_10

    iget-object p2, p2, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {p2}, Lˋᵔ/ᵎʻ;->ʼˎ()Lᵎⁱ/ⁱˊ;

    move-result-object v0

    :cond_10
    iget p2, p1, Lᵎⁱ/ⁱˊ;->ˈ:I

    if-eqz v0, :cond_11

    iget v0, v0, Lᵎⁱ/ⁱˊ;->ˈ:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_11
    iget v0, p1, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    iget p1, p1, Lᵎⁱ/ⁱˊ;->ʽ:I

    invoke-static {v0, v2, p1, p2}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1

    :cond_12
    if-eqz p2, :cond_13

    invoke-direct {p0}, Lˋᵔ/ـﹶ;->ʻٴ()Lᵎⁱ/ⁱˊ;

    move-result-object p1

    iget p1, p1, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    invoke-virtual {p0}, Lˋᵔ/ـﹶ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object p2

    iget p2, p2, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v2, p1, v2, v2}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1

    :cond_13
    iget p1, p0, Lˋᵔ/ـﹶ;->ᵔᵢ:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_15

    :cond_14
    :goto_4
    return-object v1

    :cond_15
    invoke-virtual {p0}, Lˋᵔ/ـﹶ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object p1

    iget p1, p1, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    invoke-static {v2, p1, v2, v2}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1
.end method

.method public ˈ(Landroid/view/View;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lˋᵔ/ـﹶ;->ـˆ(Landroid/view/View;)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lᵎⁱ/ⁱˊ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    :cond_0
    invoke-virtual {p0, p1}, Lˋᵔ/ـﹶ;->ʼʼ(Lᵎⁱ/ⁱˊ;)V

    return-void
.end method

.method public ˉʿ(IIII)Lˋᵔ/ᐧﹶ;
    .locals 3

    .prologue
    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    new-instance v1, Lˋᵔ/ʻᵎ;

    invoke-direct {v1, v0}, Lˋᵔ/ʻᵎ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    new-instance v1, Lˋᵔ/ᴵʼ;

    invoke-direct {v1, v0}, Lˋᵔ/ᴵʼ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    new-instance v1, Lˋᵔ/ˏᵢ;

    invoke-direct {v1, v0}, Lˋᵔ/ˏᵢ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3

    new-instance v1, Lˋᵔ/ᐧᴵ;

    invoke-direct {v1, v0}, Lˋᵔ/ᐧᴵ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lˋᵔ/ᵎᵔ;

    invoke-direct {v1, v0}, Lˋᵔ/ᵎᵔ;-><init>(Lˋᵔ/ᐧﹶ;)V

    :goto_0
    invoke-virtual {p0}, Lˋᵔ/ـﹶ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lˋᵔ/ᐧﹶ;->ˑﹳ(Lᵎⁱ/ⁱˊ;IIII)Lᵎⁱ/ⁱˊ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lˋᵔ/ˊᵔ;->ᵎﹶ(Lᵎⁱ/ⁱˊ;)V

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ʼˎ()Lᵎⁱ/ⁱˊ;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lˋᵔ/ᐧﹶ;->ˑﹳ(Lᵎⁱ/ⁱˊ;IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    invoke-virtual {v1, p1}, Lˋᵔ/ˊᵔ;->ˑﹳ(Lᵎⁱ/ⁱˊ;)V

    invoke-virtual {v1}, Lˋᵔ/ˊᵔ;->ⁱˊ()Lˋᵔ/ᐧﹶ;

    move-result-object p1

    return-object p1
.end method

.method public ˉˆ()Z
    .locals 1

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public יـ(I)V
    .locals 0

    iput p1, p0, Lˋᵔ/ـﹶ;->ᵔᵢ:I

    return-void
.end method

.method public final ٴﹶ()Lᵎⁱ/ⁱˊ;
    .locals 4

    .prologue
    iget-object v0, p0, Lˋᵔ/ـﹶ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object v0

    iput-object v0, p0, Lˋᵔ/ـﹶ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    :cond_0
    iget-object v0, p0, Lˋᵔ/ـﹶ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    return-object v0
.end method

.method public ᵎﹶ(I)Lᵎⁱ/ⁱˊ;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lˋᵔ/ـﹶ;->ˏי(IZ)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1
.end method

.method public ᵔﹳ(Lˋᵔ/ᐧﹶ;)V
    .locals 0

    iput-object p1, p0, Lˋᵔ/ـﹶ;->ﾞᴵ:Lˋᵔ/ᐧﹶ;

    return-void
.end method

.method public ﾞᴵ(I)Lᵎⁱ/ⁱˊ;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lˋᵔ/ـﹶ;->ˏי(IZ)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1
.end method
