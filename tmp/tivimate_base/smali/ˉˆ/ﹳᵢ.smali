.class public abstract Lˉˆ/ﹳᵢ;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static ﹳٴ(Landroid/content/Context;)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Lˉˆ/ˋـ;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    sget p0, Lˉˆ/ᵢʻ;->ﹳٴ:I

    :cond_0
    return-void
.end method
