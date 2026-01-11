.class public abstract Lـʽ/ⁱˊ;
.super Lʻᴵ/ﾞᴵ;
.source "SourceFile"


# instance fields
.field public ʼˈ:Ljava/util/List;

.field public ʽʽ:I

.field public ˆﾞ:Z

.field public ˈʿ:Z

.field public ˈٴ:[B

.field public ˉٴ:J

.field public ˊʻ:J

.field public ˊˋ:Z

.field public ˋᵔ:Lـʽ/ﹳٴ;

.field public ˑٴ:Lـʽ/ˆʾ;

.field public ـˏ:Z

.field public ٴʼ:I

.field public ٴᵢ:J

.field public ᴵᵔ:I

.field public ᵎˊ:I

.field public ᵎⁱ:J

.field public ᵔי:Ljava/lang/String;

.field public ᵔٴ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lʻᴵ/ﾞᴵ;-><init>(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lـʽ/ⁱˊ;->ٴᵢ:J

    iput-wide v0, p0, Lـʽ/ⁱˊ;->ˉٴ:J

    iput-wide v0, p0, Lـʽ/ⁱˊ;->ᵎⁱ:J

    const/4 v0, 0x1

    iput v0, p0, Lـʽ/ⁱˊ;->ᵔٴ:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lـʽ/ⁱˊ;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    check-cast p1, Lـʽ/ⁱˊ;

    iget-object p1, p1, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
