.class public final Lˊᵔ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:Ljava/lang/ThreadLocal;


# instance fields
.field public final ʽ:Lˉˆ/ʿ;

.field public final ˈ:Landroidx/lifecycle/ᵎⁱ;

.field public final ˑﹳ:Lﹳʽ/ˊʻ;

.field public ᵎﹶ:F

.field public ᵔᵢ:Lˊᵔ/ⁱˊ;

.field public final ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Lיـ/ﹳᐧ;

.field public ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lˊᵔ/ʽ;->ʼˎ:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lﹳʽ/ˊʻ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lיـ/ﹳᐧ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lˊᵔ/ʽ;->ﹳٴ:Lיـ/ﹳᐧ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˊᵔ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    new-instance v0, Lˉˆ/ʿ;

    const/4 v2, 0x6

    invoke-direct {v0, v2, p0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lˊᵔ/ʽ;->ʽ:Lˉˆ/ʿ;

    new-instance v0, Landroidx/lifecycle/ᵎⁱ;

    const/16 v2, 0x15

    invoke-direct {v0, v2, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lˊᵔ/ʽ;->ˈ:Landroidx/lifecycle/ᵎⁱ;

    iput-boolean v1, p0, Lˊᵔ/ʽ;->ﾞᴵ:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lˊᵔ/ʽ;->ᵎﹶ:F

    iput-object p1, p0, Lˊᵔ/ʽ;->ˑﹳ:Lﹳʽ/ˊʻ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lˊᵔ/ᵔᵢ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˊᵔ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lˊᵔ/ʽ;->ˑﹳ:Lﹳʽ/ˊʻ;

    iget-object v1, v1, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/view/Choreographer;

    new-instance v2, Lʻʻ/ﾞᴵ;

    iget-object v3, p0, Lˊᵔ/ʽ;->ˈ:Landroidx/lifecycle/ᵎⁱ;

    invoke-direct {v2, v3}, Lʻʻ/ﾞᴵ;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    iput v1, p0, Lˊᵔ/ʽ;->ᵎﹶ:F

    iget-object v1, p0, Lˊᵔ/ʽ;->ᵔᵢ:Lˊᵔ/ⁱˊ;

    if-nez v1, :cond_0

    new-instance v1, Lˊᵔ/ⁱˊ;

    invoke-direct {v1, p0}, Lˊᵔ/ⁱˊ;-><init>(Lˊᵔ/ʽ;)V

    iput-object v1, p0, Lˊᵔ/ʽ;->ᵔᵢ:Lˊᵔ/ⁱˊ;

    :cond_0
    iget-object v1, p0, Lˊᵔ/ʽ;->ᵔᵢ:Lˊᵔ/ⁱˊ;

    iget-object v2, v1, Lˊᵔ/ⁱˊ;->ﹳٴ:Lˊᵔ/ﹳٴ;

    if-nez v2, :cond_1

    new-instance v2, Lˊᵔ/ﹳٴ;

    invoke-direct {v2, v1}, Lˊᵔ/ﹳٴ;-><init>(Lˊᵔ/ⁱˊ;)V

    iput-object v2, v1, Lˊᵔ/ⁱˊ;->ﹳٴ:Lˊᵔ/ﹳٴ;

    invoke-static {v2}, Landroid/animation/ValueAnimator;->registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
