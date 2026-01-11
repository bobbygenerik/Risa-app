.class public final Lˊᵔ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Lˊᵔ/ʽ;

.field public ﹳٴ:Lˊᵔ/ﹳٴ;


# direct methods
.method public constructor <init>(Lˊᵔ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊᵔ/ⁱˊ;->ⁱˊ:Lˊᵔ/ʽ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Z
    .locals 2

    iget-object v0, p0, Lˊᵔ/ⁱˊ;->ﹳٴ:Lˊᵔ/ﹳٴ;

    invoke-static {v0}, Landroid/animation/ValueAnimator;->unregisterDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lˊᵔ/ⁱˊ;->ﹳٴ:Lˊᵔ/ﹳٴ;

    return v0
.end method
