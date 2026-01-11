.class public final Lʾⁱ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:I


# instance fields
.field public final ʽ:Landroidx/leanback/widget/ˉˆ;

.field public final ˈ:F

.field public final ⁱˊ:Landroid/app/ActivityManager;

.field public final ﹳٴ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lʾⁱ/ᵎﹶ;->ˑﹳ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lʾⁱ/ᵎﹶ;->ˑﹳ:I

    int-to-float v0, v0

    iput v0, p0, Lʾⁱ/ᵎﹶ;->ˈ:F

    iput-object p1, p0, Lʾⁱ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lʾⁱ/ᵎﹶ;->ⁱˊ:Landroid/app/ActivityManager;

    new-instance v1, Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/16 v2, 0xe

    invoke-direct {v1, v2, p1}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lʾⁱ/ᵎﹶ;->ʽ:Landroidx/leanback/widget/ˉˆ;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lʾⁱ/ᵎﹶ;->ˈ:F

    :cond_0
    return-void
.end method
