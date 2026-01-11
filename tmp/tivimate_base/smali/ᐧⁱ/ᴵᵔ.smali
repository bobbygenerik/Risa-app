.class public final Lᐧⁱ/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﹳٴ:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public static synthetic ﹳٴ(Lᐧⁱ/ᴵᵔ;Landroid/view/SurfaceView;Lᐧⁱ/ʾˋ;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    const-string v1, "exo-sync-b-334901521"

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lᐧⁱ/ᴵᵔ;->ﹳٴ:Landroid/window/SurfaceSyncGroup;

    new-instance p0, Lʿˋ/ˉٴ;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lʿˋ/ˉٴ;-><init>(I)V

    invoke-virtual {v0, p1, p0}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    move-result p0

    invoke-static {p0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual {p2}, Lᐧⁱ/ʾˋ;->run()V

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-interface {p1, p0}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    return-void
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lᐧⁱ/ᴵᵔ;->ﹳٴ:Landroid/window/SurfaceSyncGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    const/4 v0, 0x0

    iput-object v0, p0, Lᐧⁱ/ᴵᵔ;->ﹳٴ:Landroid/window/SurfaceSyncGroup;

    :cond_0
    return-void
.end method
