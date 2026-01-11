.class public final Lⁱʼ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Ljava/util/ArrayDeque;


# instance fields
.field public ﹳٴ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lʿٴ/ᵔʾ;->ﹳٴ:[C

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lⁱʼ/ᵔʾ;->ⁱˊ:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/Object;)Lⁱʼ/ᵔʾ;
    .locals 2

    .prologue
    sget-object v0, Lⁱʼ/ᵔʾ;->ⁱˊ:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱʼ/ᵔʾ;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lⁱʼ/ᵔʾ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :cond_0
    iput-object p0, v1, Lⁱʼ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lⁱʼ/ᵔʾ;

    if-eqz v0, :cond_0

    check-cast p1, Lⁱʼ/ᵔʾ;

    iget-object v0, p0, Lⁱʼ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    iget-object p1, p1, Lⁱʼ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lⁱʼ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
