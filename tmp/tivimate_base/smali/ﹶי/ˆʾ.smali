.class public final Lﹶי/ˆʾ;
.super Lˊʽ/ﹳᐧ;
.source "SourceFile"


# instance fields
.field public final synthetic ˑﹳ:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public constructor <init>(JLﹶי/ˆʾ;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lˊʽ/ﹳᐧ;-><init>(JLˊʽ/ﹳᐧ;I)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget p2, Lﹶי/ʼˎ;->ﾞᴵ:I

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lﹶי/ˆʾ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SemaphoreSegment[id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lˊʽ/ﹳᐧ;->ʽ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ᵎﹶ()I
    .locals 1

    sget v0, Lﹶי/ʼˎ;->ﾞᴵ:I

    return v0
.end method

.method public final ᵔᵢ(ILˈי/ᵔᵢ;)V
    .locals 1

    sget-object p2, Lﹶי/ʼˎ;->ˑﹳ:Lʻᴵ/ﹳٴ;

    iget-object v0, p0, Lﹶי/ˆʾ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lˊʽ/ﹳᐧ;->ʼˎ()V

    return-void
.end method
