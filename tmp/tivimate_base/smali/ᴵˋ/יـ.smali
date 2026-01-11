.class public abstract Lᴵˋ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public ˈ:Z

.field public final ⁱˊ:Landroidx/work/WorkerParameters;

.field public final ﹳٴ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, -0x100

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lᴵˋ/יـ;->ʽ:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lᴵˋ/יـ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lᴵˋ/יـ;->ⁱˊ:Landroidx/work/WorkerParameters;

    return-void
.end method


# virtual methods
.method public final ʽ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lᴵˋ/יـ;->ʽ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, -0x100

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract ˈ()Lʽﹳ/ٴﹶ;
.end method

.method public final ⁱˊ()I
    .locals 1

    iget-object v0, p0, Lᴵˋ/יـ;->ⁱˊ:Landroidx/work/WorkerParameters;

    iget v0, v0, Landroidx/work/WorkerParameters;->ˈ:I

    return v0
.end method

.method public abstract ﹳٴ()Lʽﹳ/ٴﹶ;
.end method
