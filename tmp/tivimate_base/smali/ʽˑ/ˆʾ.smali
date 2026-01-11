.class public abstract Lʽˑ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final ʽʽ:J

.field public final ʾˋ:Ljava/lang/String;

.field public final ˈٴ:I

.field public final ˉٴ:Ljava/lang/String;

.field public final ˊʻ:Lʽⁱ/ᵔʾ;

.field public final ٴʼ:J

.field public final ٴᵢ:Ljava/lang/String;

.field public final ᴵˊ:Lʽˑ/ʼˎ;

.field public final ᴵᵔ:J

.field public final ᵎˊ:Z

.field public final ᵎⁱ:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lʽˑ/ʼˎ;JIJLʽⁱ/ᵔʾ;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽˑ/ˆʾ;->ʾˋ:Ljava/lang/String;

    iput-object p2, p0, Lʽˑ/ˆʾ;->ᴵˊ:Lʽˑ/ʼˎ;

    iput-wide p3, p0, Lʽˑ/ˆʾ;->ʽʽ:J

    iput p5, p0, Lʽˑ/ˆʾ;->ˈٴ:I

    iput-wide p6, p0, Lʽˑ/ˆʾ;->ᴵᵔ:J

    iput-object p8, p0, Lʽˑ/ˆʾ;->ˊʻ:Lʽⁱ/ᵔʾ;

    iput-object p9, p0, Lʽˑ/ˆʾ;->ٴᵢ:Ljava/lang/String;

    iput-object p10, p0, Lʽˑ/ˆʾ;->ˉٴ:Ljava/lang/String;

    iput-wide p11, p0, Lʽˑ/ˆʾ;->ᵎⁱ:J

    iput-wide p13, p0, Lʽˑ/ˆʾ;->ٴʼ:J

    iput-boolean p15, p0, Lʽˑ/ˆʾ;->ᵎˊ:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lʽˑ/ˆʾ;->ᴵᵔ:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
