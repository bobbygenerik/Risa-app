.class public final Lˋᵔ/ʿᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﹳٴ:Lˋᵔ/ʿ;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lˋᵔ/ˉـ;

    invoke-static {p1, p2, p3, p4}, Lˋᵔ/ˈⁱ;->ⁱˊ(ILandroid/view/animation/Interpolator;J)Landroid/view/WindowInsetsAnimation;

    move-result-object p1

    invoke-direct {v0, p1}, Lˋᵔ/ˉـ;-><init>(Landroid/view/WindowInsetsAnimation;)V

    iput-object v0, p0, Lˋᵔ/ʿᵢ;->ﹳٴ:Lˋᵔ/ʿ;

    return-void

    :cond_0
    new-instance v0, Lˋᵔ/ﹳـ;

    invoke-direct {v0, p1, p2, p3, p4}, Lˋᵔ/ʿ;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Lˋᵔ/ʿᵢ;->ﹳٴ:Lˋᵔ/ʿ;

    return-void
.end method
