.class public final Lʿʼ/ˑﹳ;
.super Lʿʼ/ʽ;
.source "SourceFile"


# instance fields
.field public final ᴵᵔ:Lʿʼ/ٴﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lʿʼ/ˑﹳ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Lʼﹳ/ᵔᵢ;Lʿʼ/ˈ;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lʿʼ/ʽ;-><init>(Lʼﹳ/ᵔᵢ;Lʿʼ/ˈ;Ljava/lang/String;)V

    new-instance v0, Lʿʼ/ٴﹶ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lʿʼ/ٴﹶ;->ﹳٴ:Lʿʼ/ˈ;

    iput-object p1, v0, Lʿʼ/ٴﹶ;->ⁱˊ:Lʼﹳ/ᵔᵢ;

    iput-object p3, v0, Lʿʼ/ٴﹶ;->ʽ:Ljava/lang/String;

    iput-object v0, p0, Lʿʼ/ˑﹳ;->ᴵᵔ:Lʿʼ/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File{fileId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʿʼ/ʽ;->ʽʽ:Lʼﹳ/ᵔᵢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʼ/ʽ;->ˈٴ:Ljava/lang/String;

    const-string v2, "\'}"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʾˋ(Z)Lʿʼ/ᵔᵢ;
    .locals 6

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lʿʼ/ʽ;->ـˆ()Lﹳˋ/ᴵˊ;

    move-result-object p1

    check-cast p1, Lﹳˋ/ˈٴ;

    iget-wide v0, p1, Lﹳˋ/ˈٴ;->ʾˋ:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object p1, p0, Lʿʼ/ˑﹳ;->ᴵᵔ:Lʿʼ/ٴﹶ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lʿʼ/ᵔᵢ;

    iget-object v3, p1, Lʿʼ/ٴﹶ;->ﹳٴ:Lʿʼ/ˈ;

    iget v3, v3, Lʿʼ/ﾞʻ;->ˉٴ:I

    invoke-direct {v2}, Ljava/io/OutputStream;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v2, Lʿʼ/ᵔᵢ;->ᴵˊ:Z

    iput-object p1, v2, Lʿʼ/ᵔᵢ;->ʾˋ:Lʿʼ/ٴﹶ;

    new-instance p1, Lʿʼ/ᵎﹶ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lʻᴵ/ʻٴ;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lʻᴵ/ʻٴ;-><init>(I)V

    new-array v3, v3, [B

    iput-object v3, v4, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iput-object v4, p1, Lʿʼ/ᵎﹶ;->ᴵˊ:Lʻᴵ/ʻٴ;

    iput-wide v0, p1, Lᵢʼ/ⁱˊ;->ʾˋ:J

    iput-object p1, v2, Lʿʼ/ᵔᵢ;->ʽʽ:Lʿʼ/ᵎﹶ;

    return-object v2
.end method
