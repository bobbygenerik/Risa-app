.class public Landroidx/leanback/widget/ـˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:F

.field public ˈ:Z

.field public ˑﹳ:Z

.field public ⁱˊ:I

.field public ﹳٴ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/ـˏ;->ﹳٴ:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/ـˏ;->ⁱˊ:I

    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Landroidx/leanback/widget/ـˏ;->ʽ:F

    iput-boolean v0, p0, Landroidx/leanback/widget/ـˏ;->ˈ:Z

    return-void
.end method


# virtual methods
.method public final ﹳٴ(F)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    :cond_1
    iput p1, p0, Landroidx/leanback/widget/ـˏ;->ʽ:F

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
