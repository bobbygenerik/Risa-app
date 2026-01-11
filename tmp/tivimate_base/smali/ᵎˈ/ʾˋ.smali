.class public final Lᵎˈ/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵי/ᵎⁱ;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final ʾˋ:Lᵎˈ/ʽʽ;

.field public final ˈٴ:Lᴵי/ٴﹶ;

.field public final ᴵˊ:J


# direct methods
.method public constructor <init>(Lᵎˈ/ʽʽ;JLjava/lang/Object;Lᴵי/ٴﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎˈ/ʾˋ;->ʾˋ:Lᵎˈ/ʽʽ;

    iput-wide p2, p0, Lᵎˈ/ʾˋ;->ᴵˊ:J

    iput-object p4, p0, Lᵎˈ/ʾˋ;->ʽʽ:Ljava/lang/Object;

    iput-object p5, p0, Lᵎˈ/ʾˋ;->ˈٴ:Lᴵי/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lᵎˈ/ʾˋ;->ʾˋ:Lᵎˈ/ʽʽ;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lᵎˈ/ʾˋ;->ᴵˊ:J

    invoke-virtual {v0}, Lᵎˈ/ʽʽ;->ᵔʾ()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, v0, Lᵎˈ/ʽʽ;->ᴵᵔ:[Ljava/lang/Object;

    iget-wide v2, p0, Lᵎˈ/ʾˋ;->ᴵˊ:J

    long-to-int v4, v2

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aget-object v4, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, p0, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    sget-object v4, Lᵎˈ/ˈٴ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    invoke-static {v1, v2, v3, v4}, Lᵎˈ/ˈٴ;->ⁱˊ([Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v0}, Lᵎˈ/ʽʽ;->ʼˎ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
