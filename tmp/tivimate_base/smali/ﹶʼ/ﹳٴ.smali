.class public abstract Lﹶʼ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Ljava/lang/String;

.field public static final ﹳٴ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x101009e

    const v1, 0x10100a7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lﹶʼ/ﹳٴ;->ﹳٴ:[I

    const-class v0, Lﹶʼ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lﹶʼ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    return-void
.end method

.method public static ﹳٴ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lﹶʼ/ﹳٴ;->ﹳٴ:[I

    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lﹶʼ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    const-string v1, "Use a non-transparent color for the default color as it will be used to finish ripple animations."

    nop

    :cond_0
    return-object p0

    :cond_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method
