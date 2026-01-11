.class public final Lᵔᐧ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:Lˊᐧ/ʼˎ;

.field public static final ˈ:Lˊᐧ/ʼˎ;

.field public static final ˑﹳ:Lˊᐧ/ʼˎ;

.field public static final ᵎﹶ:Lˊᐧ/ʼˎ;

.field public static final ᵔᵢ:Lˊᐧ/ʼˎ;

.field public static final ﾞᴵ:Lˊᐧ/ʼˎ;


# instance fields
.field public final ʽ:I

.field public final ⁱˊ:Lˊᐧ/ʼˎ;

.field public final ﹳٴ:Lˊᐧ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    invoke-static {v0}, Lٴﾞ/ˆʾ;->יـ(Ljava/lang/String;)Lˊᐧ/ʼˎ;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ⁱˊ;->ˈ:Lˊᐧ/ʼˎ;

    const-string v0, ":status"

    invoke-static {v0}, Lٴﾞ/ˆʾ;->יـ(Ljava/lang/String;)Lˊᐧ/ʼˎ;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ⁱˊ;->ˑﹳ:Lˊᐧ/ʼˎ;

    const-string v0, ":method"

    invoke-static {v0}, Lٴﾞ/ˆʾ;->יـ(Ljava/lang/String;)Lˊᐧ/ʼˎ;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ⁱˊ;->ﾞᴵ:Lˊᐧ/ʼˎ;

    const-string v0, ":path"

    invoke-static {v0}, Lٴﾞ/ˆʾ;->יـ(Ljava/lang/String;)Lˊᐧ/ʼˎ;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ⁱˊ;->ᵎﹶ:Lˊᐧ/ʼˎ;

    const-string v0, ":scheme"

    invoke-static {v0}, Lٴﾞ/ˆʾ;->יـ(Ljava/lang/String;)Lˊᐧ/ʼˎ;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ⁱˊ;->ᵔᵢ:Lˊᐧ/ʼˎ;

    const-string v0, ":authority"

    invoke-static {v0}, Lٴﾞ/ˆʾ;->יـ(Ljava/lang/String;)Lˊᐧ/ʼˎ;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ⁱˊ;->ʼˎ:Lˊᐧ/ʼˎ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object p1, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    new-instance p1, Lˊᐧ/ʼˎ;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {p1, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object p2, p1, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Lˊᐧ/ʼˎ;)V

    return-void
.end method

.method public constructor <init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object p2, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Lˊᐧ/ʼˎ;)V

    return-void
.end method

.method public constructor <init>(Lˊᐧ/ʼˎ;Lˊᐧ/ʼˎ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ⁱˊ;->ﹳٴ:Lˊᐧ/ʼˎ;

    iput-object p2, p0, Lᵔᐧ/ⁱˊ;->ⁱˊ:Lˊᐧ/ʼˎ;

    invoke-virtual {p1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lᵔᐧ/ⁱˊ;->ʽ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lᵔᐧ/ⁱˊ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lᵔᐧ/ⁱˊ;

    iget-object v1, p0, Lᵔᐧ/ⁱˊ;->ﹳٴ:Lˊᐧ/ʼˎ;

    iget-object v3, p1, Lᵔᐧ/ⁱˊ;->ﹳٴ:Lˊᐧ/ʼˎ;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lᵔᐧ/ⁱˊ;->ⁱˊ:Lˊᐧ/ʼˎ;

    iget-object p1, p1, Lᵔᐧ/ⁱˊ;->ⁱˊ:Lˊᐧ/ʼˎ;

    invoke-static {v1, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lᵔᐧ/ⁱˊ;->ﹳٴ:Lˊᐧ/ʼˎ;

    invoke-virtual {v0}, Lˊᐧ/ʼˎ;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lᵔᐧ/ⁱˊ;->ⁱˊ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lᵔᐧ/ⁱˊ;->ﹳٴ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᵔᐧ/ⁱˊ;->ⁱˊ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
