.class public abstract Lˋᵔ/ʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Landroid/view/animation/Interpolator;

.field public final ˈ:J

.field public ⁱˊ:F

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˋᵔ/ʿ;->ﹳٴ:I

    iput-object p2, p0, Lˋᵔ/ʿ;->ʽ:Landroid/view/animation/Interpolator;

    iput-wide p3, p0, Lˋᵔ/ʿ;->ˈ:J

    return-void
.end method


# virtual methods
.method public ʽ()F
    .locals 2

    .prologue
    iget-object v0, p0, Lˋᵔ/ʿ;->ʽ:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v1, p0, Lˋᵔ/ʿ;->ⁱˊ:F

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lˋᵔ/ʿ;->ⁱˊ:F

    return v0
.end method

.method public ˈ()I
    .locals 1

    iget v0, p0, Lˋᵔ/ʿ;->ﹳٴ:I

    return v0
.end method

.method public ˑﹳ(F)V
    .locals 0

    iput p1, p0, Lˋᵔ/ʿ;->ⁱˊ:F

    return-void
.end method

.method public ⁱˊ()J
    .locals 2

    iget-wide v0, p0, Lˋᵔ/ʿ;->ˈ:J

    return-wide v0
.end method

.method public ﹳٴ()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
