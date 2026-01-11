.class public final Lˋⁱ/ˏי;
.super Lˋⁱ/ʻٴ;
.source "SourceFile"


# static fields
.field public static final ᵔᵢ:Landroid/graphics/RectF;


# instance fields
.field public final ʽ:F

.field public final ˈ:F

.field public final ˑﹳ:F

.field public ᵎﹶ:F

.field public final ⁱˊ:F

.field public ﾞᴵ:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lˋⁱ/ˏי;->ᵔᵢ:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Lˋⁱ/ʻٴ;-><init>()V

    iput p1, p0, Lˋⁱ/ˏי;->ⁱˊ:F

    iput p2, p0, Lˋⁱ/ˏי;->ʽ:F

    iput p3, p0, Lˋⁱ/ˏי;->ˈ:F

    iput p4, p0, Lˋⁱ/ˏי;->ˑﹳ:F

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5

    iget-object v0, p0, Lˋⁱ/ʻٴ;->ﹳٴ:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v0, p0, Lˋⁱ/ˏי;->ˈ:F

    iget v1, p0, Lˋⁱ/ˏי;->ˑﹳ:F

    sget-object v2, Lˋⁱ/ˏי;->ᵔᵢ:Landroid/graphics/RectF;

    iget v3, p0, Lˋⁱ/ˏי;->ⁱˊ:F

    iget v4, p0, Lˋⁱ/ˏי;->ʽ:F

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lˋⁱ/ˏי;->ﾞᴵ:F

    iget v1, p0, Lˋⁱ/ˏי;->ᵎﹶ:F

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
