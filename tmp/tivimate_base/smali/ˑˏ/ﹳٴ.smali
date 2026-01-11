.class public abstract Lˑˏ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lᵎʻ/ﹳٴ;

.field public static final ˈ:Lᵎʻ/ﹳٴ;

.field public static final ⁱˊ:Lᵎʻ/ﹳٴ;

.field public static final ﹳٴ:Landroid/view/animation/LinearInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lˑˏ/ﹳٴ;->ﹳٴ:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Lᵎʻ/ﹳٴ;

    sget-object v1, Lᵎʻ/ﹳٴ;->ˈ:[F

    invoke-direct {v0, v1}, Lᵎʻ/ⁱˊ;-><init>([F)V

    sput-object v0, Lˑˏ/ﹳٴ;->ⁱˊ:Lᵎʻ/ﹳٴ;

    new-instance v0, Lᵎʻ/ﹳٴ;

    invoke-direct {v0}, Lᵎʻ/ﹳٴ;-><init>()V

    sput-object v0, Lˑˏ/ﹳٴ;->ʽ:Lᵎʻ/ﹳٴ;

    new-instance v0, Lᵎʻ/ﹳٴ;

    sget-object v1, Lᵎʻ/ﹳٴ;->ˑﹳ:[F

    invoke-direct {v0, v1}, Lᵎʻ/ⁱˊ;-><init>([F)V

    sput-object v0, Lˑˏ/ﹳٴ;->ˈ:Lᵎʻ/ﹳٴ;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method public static ʽ(FII)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static ⁱˊ(FFFFF)F
    .locals 1

    .prologue
    cmpg-float v0, p4, p2

    if-gtz v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p4, p3

    if-ltz v0, :cond_1

    return p1

    :cond_1
    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    invoke-static {p0, p1, p4}, Lˑˏ/ﹳٴ;->ﹳٴ(FFF)F

    move-result p0

    return p0
.end method

.method public static ﹳٴ(FFF)F
    .locals 0

    invoke-static {p1, p0, p2, p0}, Landroid/support/v4/media/session/ﹳٴ;->ﾞᴵ(FFFF)F

    move-result p0

    return p0
.end method
