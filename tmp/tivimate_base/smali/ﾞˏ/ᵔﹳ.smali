.class public final Lﾞˏ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Lᐧˎ/ʻٴ;

.field public final ʽ:Landroid/util/SparseArray;

.field public ˆʾ:Landroid/util/Pair;

.field public final ˈ:Z

.field public ˉʿ:J

.field public ˉˆ:I

.field public final ˑﹳ:Lﾞˏ/ˈ;

.field public ٴﹶ:I

.field public final ᵎﹶ:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public ᵔʾ:Z

.field public ᵔᵢ:Lʻˆ/ﾞᴵ;

.field public final ⁱˊ:Lﾞˏ/ˉˆ;

.field public final ﹳٴ:Landroid/content/Context;

.field public ﾞʻ:I

.field public final ﾞᴵ:Lᐧˎ/ˏי;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lⁱי/ٴﹶ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lⁱי/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lﾞˏ/ᵔﹳ;->ﹳٴ:Landroid/content/Context;

    new-instance v0, Lʻˆ/ﾞᴵ;

    invoke-direct {v0}, Lʻˆ/ﾞᴵ;-><init>()V

    iput-object v0, p0, Lﾞˏ/ᵔﹳ;->ᵔᵢ:Lʻˆ/ﾞᴵ;

    iget-object v0, p1, Lⁱי/ٴﹶ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ˉˆ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iput-object v0, p0, Lﾞˏ/ᵔﹳ;->ⁱˊ:Lﾞˏ/ˉˆ;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lﾞˏ/ᵔﹳ;->ʽ:Landroid/util/SparseArray;

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    iget-boolean v0, p1, Lⁱי/ٴﹶ;->ʾˋ:Z

    iput-boolean v0, p0, Lﾞˏ/ᵔﹳ;->ˈ:Z

    iget-object v0, p1, Lⁱי/ٴﹶ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ˏי;

    iput-object v0, p0, Lﾞˏ/ᵔﹳ;->ﾞᴵ:Lᐧˎ/ˏי;

    new-instance v1, Lﾞˏ/ˈ;

    iget-object p1, p1, Lⁱי/ٴﹶ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lﾞˏ/ʻٴ;

    invoke-direct {v1, p1, v0}, Lﾞˏ/ˈ;-><init>(Lﾞˏ/ʻٴ;Lᐧˎ/ˏי;)V

    iput-object v1, p0, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lﾞˏ/ᵔﹳ;->ᵎﹶ:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Lʽⁱ/ᵔﹳ;

    invoke-direct {p1}, Lʽⁱ/ᵔﹳ;-><init>()V

    invoke-virtual {p1}, Lʽⁱ/ᵔﹳ;->ﹳٴ()Lʽⁱ/ﹳᐧ;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lﾞˏ/ᵔﹳ;->ˉʿ:J

    const/4 p1, -0x1

    iput p1, p0, Lﾞˏ/ᵔﹳ;->ˉˆ:I

    const/4 p1, 0x0

    iput p1, p0, Lﾞˏ/ᵔﹳ;->ﾞʻ:I

    return-void
.end method
