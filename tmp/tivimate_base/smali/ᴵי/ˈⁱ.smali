.class public final Lᴵי/ˈⁱ;
.super Lᴵי/ʿ;
.source "SourceFile"


# static fields
.field public static final synthetic ˊʻ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _invoked$volatile:I

.field public final ᴵᵔ:Lʼⁱ/ᴵˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lᴵי/ˈⁱ;

    const-string v1, "_invoked$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lᴵי/ˈⁱ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lʼⁱ/ᴵˊ;)V
    .locals 0

    invoke-direct {p0}, Lˊʽ/ˆʾ;-><init>()V

    iput-object p1, p0, Lᴵי/ˈⁱ;->ᴵᵔ:Lʼⁱ/ᴵˊ;

    return-void
.end method


# virtual methods
.method public final ˆʾ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ٴﹶ(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lᴵי/ˈⁱ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lᴵי/ˈⁱ;->ᴵᵔ:Lʼⁱ/ᴵˊ;

    invoke-virtual {v0, p1}, Lʼⁱ/ᴵˊ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
