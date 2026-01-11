.class public final Lˋᵔ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lˋᵔ/יـ;


# direct methods
.method public constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Lˋᵔ/ﹳᐧ;

    invoke-direct {v0, p1}, Lˋᵔ/ﹳᐧ;-><init>(Landroidx/core/widget/NestedScrollView;)V

    iput-object v0, p0, Lˋᵔ/ˏי;->ﹳٴ:Lˋᵔ/יـ;

    return-void

    :cond_0
    new-instance p1, Lᵎˉ/ⁱˊ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋᵔ/ˏי;->ﹳٴ:Lˋᵔ/יـ;

    return-void
.end method
