.class public final Lיי/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:J

.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public ˈ:Z

.field public ˑﹳ:Z

.field public ᵎﹶ:J

.field public ᵔᵢ:J

.field public final ⁱˊ:Lᐧˎ/ـˆ;

.field public final ﹳٴ:I

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lיי/ˈٴ;->ﹳٴ:I

    new-instance p1, Lᐧˎ/ـˆ;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lᐧˎ/ـˆ;-><init>(J)V

    iput-object p1, p0, Lיי/ˈٴ;->ⁱˊ:Lᐧˎ/ـˆ;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ˈٴ;->ᵎﹶ:J

    iput-wide v0, p0, Lיי/ˈٴ;->ᵔᵢ:J

    iput-wide v0, p0, Lיי/ˈٴ;->ʼˎ:J

    new-instance p1, Lᐧˎ/ﹳᐧ;

    invoke-direct {p1}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object p1, p0, Lיי/ˈٴ;->ʽ:Lᐧˎ/ﹳᐧ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lˊﾞ/ʼᐧ;)V
    .locals 3

    sget-object v0, Lᐧˎ/ʼʼ;->ⁱˊ:[B

    iget-object v1, p0, Lיי/ˈٴ;->ʽ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v0

    invoke-virtual {v1, v2, v0}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lיי/ˈٴ;->ˈ:Z

    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    return-void
.end method
