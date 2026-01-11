.class public final Landroidx/lifecycle/ᵔי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ʽﹳ;


# static fields
.field public static final ᵎⁱ:Landroidx/lifecycle/ᵔי;


# instance fields
.field public ʽʽ:Z

.field public ʾˋ:I

.field public ˈٴ:Z

.field public final ˉٴ:Lﹳי/ʽ;

.field public final ˊʻ:Landroidx/lifecycle/ـˆ;

.field public final ٴᵢ:Landroidx/lifecycle/ᵎⁱ;

.field public ᴵˊ:I

.field public ᴵᵔ:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/ᵔי;

    invoke-direct {v0}, Landroidx/lifecycle/ᵔי;-><init>()V

    sput-object v0, Landroidx/lifecycle/ᵔי;->ᵎⁱ:Landroidx/lifecycle/ᵔי;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ᵔי;->ʽʽ:Z

    iput-boolean v0, p0, Landroidx/lifecycle/ᵔי;->ˈٴ:Z

    new-instance v0, Landroidx/lifecycle/ـˆ;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ـˆ;-><init>(Landroidx/lifecycle/ʽﹳ;)V

    iput-object v0, p0, Landroidx/lifecycle/ᵔי;->ˊʻ:Landroidx/lifecycle/ـˆ;

    new-instance v0, Landroidx/lifecycle/ᵎⁱ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/ᵔי;->ٴᵢ:Landroidx/lifecycle/ᵎⁱ;

    new-instance v0, Lﹳי/ʽ;

    invoke-direct {v0, p0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/ᵔי;->ˉٴ:Lﹳי/ʽ;

    return-void
.end method


# virtual methods
.method public final ˋᵔ()Landroidx/lifecycle/ـˆ;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/ᵔי;->ˊʻ:Landroidx/lifecycle/ـˆ;

    return-object v0
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget v0, p0, Landroidx/lifecycle/ᵔי;->ᴵˊ:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/ᵔי;->ᴵˊ:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/ᵔי;->ʽʽ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/ᵔי;->ˊʻ:Landroidx/lifecycle/ـˆ;

    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_RESUME:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ᵔי;->ʽʽ:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/ᵔי;->ᴵᵔ:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/ᵔי;->ٴᵢ:Landroidx/lifecycle/ᵎⁱ;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
