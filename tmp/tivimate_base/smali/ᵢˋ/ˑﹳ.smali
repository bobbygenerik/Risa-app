.class public abstract Lᵢˋ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ٴﹶ;


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:J

.field public final ˈٴ:Lʽⁱ/ﹳᐧ;

.field public final ˉٴ:J

.field public final ˊʻ:Ljava/lang/Object;

.field public final ٴᵢ:J

.field public final ᴵˊ:Lـˊ/ᵔᵢ;

.field public final ᴵᵔ:I

.field public final ᵎⁱ:Lـˊ/ʼᐧ;


# direct methods
.method public constructor <init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lـˊ/ʼᐧ;

    invoke-direct {v0, p1}, Lـˊ/ʼᐧ;-><init>(Lـˊ/ﾞᴵ;)V

    iput-object v0, p0, Lᵢˋ/ˑﹳ;->ᵎⁱ:Lـˊ/ʼᐧ;

    iput-object p2, p0, Lᵢˋ/ˑﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    iput p3, p0, Lᵢˋ/ˑﹳ;->ʽʽ:I

    iput-object p4, p0, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iput p5, p0, Lᵢˋ/ˑﹳ;->ᴵᵔ:I

    iput-object p6, p0, Lᵢˋ/ˑﹳ;->ˊʻ:Ljava/lang/Object;

    iput-wide p7, p0, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    iput-wide p9, p0, Lᵢˋ/ˑﹳ;->ˉٴ:J

    sget-object p1, Lﹳᵢ/ﹳᐧ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, Lᵢˋ/ˑﹳ;->ʾˋ:J

    return-void
.end method
