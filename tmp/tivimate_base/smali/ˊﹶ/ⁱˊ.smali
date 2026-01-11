.class public final Lˊﹶ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Ljava/lang/Object;

.field public ʽ:Ljava/lang/Object;

.field public ˈ:Ljava/lang/Object;

.field public ˑﹳ:Ljava/io/Serializable;

.field public ᵎﹶ:Ljava/lang/Object;

.field public ᵔᵢ:Ljava/lang/Object;

.field public ⁱˊ:I

.field public final synthetic ﹳٴ:I

.field public ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lˊﹶ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    iput-object v0, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    const/4 v1, -0x1

    iput v1, p0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lﹶˈ/ٴﹶ;->ʿᵢ([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˊﹶ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;ILcom/parse/ٴʼ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˊﹶ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lˊﹶ/ⁱˊ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    iput-object v0, p0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    new-instance v0, Lʾʻ/ﹳٴ;

    invoke-direct {v0}, Lʾʻ/ﹳٴ;-><init>()V

    iput p2, p0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    iput-object p1, p0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    iput-object p3, p0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˋⁱ/ᵔʾ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lˊﹶ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lˊﹶ/ⁱˊ;->ˑﹳ()V

    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p0, v0, p1}, Lˊﹶ/ⁱˊ;->ﹳٴ([ILˋⁱ/ᵔʾ;)V

    return-void
.end method

.method public static ᵔᵢ(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    const/16 v2, 0x26

    const/4 v3, 0x4

    invoke-static {p0, v2, v1, v3}, Lﹶˑ/ˆʾ;->ˑʼ(Ljava/lang/CharSequence;CII)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    const/16 v5, 0x3d

    invoke-static {p0, v5, v1, v3}, Lﹶˑ/ˆʾ;->ˑʼ(Ljava/lang/CharSequence;CII)I

    move-result v3

    if-eq v3, v4, :cond_2

    if-le v3, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    iget v0, p0, Lˊﹶ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectionInfo{\n  serverGuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  serverName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\n  negotiatedProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, Lʽᴵ/יـ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  clientGuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  clientCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  serverCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  clientSecurityMode=0,\n  serverSecurityMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    const-string v2, ",\n  server=\'null\'\n}"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1, v2}, Lﹶˑ/ˆʾ;->ᴵʼ(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    iget v1, p0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    :cond_6
    invoke-virtual {p0}, Lˊﹶ/ⁱˊ;->ˈ()I

    move-result v1

    iget-object v4, p0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v3, 0x50

    goto :goto_3

    :cond_7
    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v3, 0x1bb

    :cond_8
    :goto_3
    if-eq v1, v3, :cond_a

    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_b

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v3, v2}, Lˈˊ/ˉˆ;->ˉٴ(II)Lʿˈ/ʽ;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lˈˊ/ˉˆ;->ᴵᵔ(Lʿˈ/ʽ;I)Lʿˈ/ﹳٴ;

    move-result-object v2

    iget v3, v2, Lʿˈ/ﹳٴ;->ʾˋ:I

    iget v4, v2, Lʿˈ/ﹳٴ;->ᴵˊ:I

    iget v2, v2, Lʿˈ/ﹳٴ;->ʽʽ:I

    if-lez v2, :cond_c

    if-le v3, v4, :cond_d

    :cond_c
    if-gez v2, :cond_10

    if-gt v4, v3, :cond_10

    :cond_d
    :goto_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v3, :cond_e

    const/16 v7, 0x26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_f

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    if-eq v3, v4, :cond_10

    add-int/2addr v3, v2

    goto :goto_5

    :cond_10
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ʼˎ(Lʽⁱ/ᵎﹶ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lﾞʼ/ﹳٴ;

    const-string v1, "Acquiring write lock to send packet << {} >>"

    invoke-interface {v0, p1, v1}, Lﾞʼ/ﹳٴ;->ٴﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lˊﹶ/ⁱˊ;->ﾞᴵ()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "Writing packet {}"

    invoke-interface {v0, p1, v2}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v2, Lcom/parse/ٴʼ;

    iget-object v2, v2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    new-instance v2, Lˋʼ/ﹳٴ;

    invoke-direct {v2}, Lˎʿ/ⁱˊ;-><init>()V

    invoke-interface {p1, v2}, Lᐧˋ/ﹳٴ;->ˈٴ(Lˋʼ/ﹳٴ;)V

    invoke-virtual {v2}, Lˎʿ/ⁱˊ;->ﹳٴ()I

    move-result v3

    invoke-virtual {p0, v3}, Lˊﹶ/ⁱˊ;->ˆʾ(I)V

    iget-object v3, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v3, Ljava/io/BufferedOutputStream;

    iget-object v4, v2, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    iget v5, v2, Lˎʿ/ⁱˊ;->ʽ:I

    invoke-virtual {v2}, Lˎʿ/ⁱˊ;->ﹳٴ()I

    move-result v2

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v2, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    const-string v2, "Packet {} sent, lock released."

    invoke-interface {v0, p1, v2}, Lﾞʼ/ﹳٴ;->ٴﹶ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lcom/hierynomus/protocol/transport/TransportException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/hierynomus/protocol/transport/TransportException;

    const-string v2, "Cannot write %s as transport is disconnected"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public ʽ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lˊﹶ/ⁱˊ;->ﾞᴵ()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v1, Lˊﹶ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lˋʽ/ﹳٴ;->ᴵᵔ:Lﾞʼ/ﹳٴ;

    const-string v3, "Stopping PacketReader..."

    invoke-interface {v2, v3}, Lﾞʼ/ﹳٴ;->ﹳᐧ(Ljava/lang/String;)V

    iget-object v2, v1, Lˋʽ/ﹳٴ;->ʽʽ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v1, Lˋʽ/ﹳٴ;->ˈٴ:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v1, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iput-object v2, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Ljava/net/Socket;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public ˆʾ(I)V
    .locals 2

    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/io/BufferedOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/io/BufferedOutputStream;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/io/BufferedOutputStream;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/io/BufferedOutputStream;

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public ˈ()I
    .locals 3

    .prologue
    iget v0, p0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x50

    goto :goto_0

    :cond_1
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x1bb

    :cond_2
    :goto_0
    return v1
.end method

.method public ˑﹳ()V
    .locals 2

    new-instance v0, Lˋⁱ/ᵔʾ;

    invoke-direct {v0}, Lˋⁱ/ᵔʾ;-><init>()V

    iput-object v0, p0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v1, v0, [[I

    iput-object v1, p0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    new-array v0, v0, [Lˋⁱ/ᵔʾ;

    iput-object v0, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    return-void
.end method

.method public ᵎﹶ(Lˎᵢ/ʼᐧ;Ljava/lang/String;)V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Ljava/util/ArrayList;

    sget-object v3, Lⁱᐧ/ʽ;->ﹳٴ:[B

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x0

    invoke-static {v9, v3, v2}, Lⁱᐧ/ʽ;->ᵎﹶ(IILjava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v4, v3, v2}, Lⁱᐧ/ʽ;->ᵔᵢ(IILjava/lang/String;)I

    move-result v10

    sub-int v3, v10, v4

    const/16 v11, 0x30

    const/16 v12, 0x5b

    const/16 v13, 0x3a

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-ge v3, v15, :cond_1

    :cond_0
    :goto_0
    move v3, v14

    goto :goto_3

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x61

    invoke-static {v3, v5}, Lˊʼ/ˆʾ;->ˈ(II)I

    move-result v6

    const/16 v7, 0x41

    if-ltz v6, :cond_2

    const/16 v6, 0x7a

    invoke-static {v3, v6}, Lˊʼ/ˆʾ;->ˈ(II)I

    move-result v6

    if-lez v6, :cond_3

    :cond_2
    invoke-static {v3, v7}, Lˊʼ/ˆʾ;->ˈ(II)I

    move-result v6

    if-ltz v6, :cond_0

    const/16 v6, 0x5a

    invoke-static {v3, v6}, Lˊʼ/ˆʾ;->ˈ(II)I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v4, 0x1

    :goto_1
    if-ge v3, v10, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v5, v6, :cond_4

    const/16 v5, 0x7b

    if-ge v6, v5, :cond_4

    goto :goto_2

    :cond_4
    if-gt v7, v6, :cond_5

    if-ge v6, v12, :cond_5

    goto :goto_2

    :cond_5
    if-gt v11, v6, :cond_6

    if-ge v6, v13, :cond_6

    goto :goto_2

    :cond_6
    const/16 v5, 0x2b

    if-eq v6, v5, :cond_8

    const/16 v5, 0x2d

    if-eq v6, v5, :cond_8

    const/16 v5, 0x2e

    if-ne v6, v5, :cond_7

    goto :goto_2

    :cond_7
    if-ne v6, v13, :cond_0

    goto :goto_3

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x61

    goto :goto_1

    :goto_3
    const-string v5, "http"

    const-string v6, "https"

    const/4 v7, 0x1

    if-eq v3, v14, :cond_b

    move-object/from16 v16, v6

    const/4 v6, 0x0

    move/from16 v17, v3

    move v3, v7

    const/4 v7, 0x6

    move-object/from16 v18, v5

    const-string v5, "https:"

    move-object/from16 v13, v16

    move/from16 v11, v17

    move-object/from16 v12, v18

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_9

    iput-object v13, v0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x6

    move-object/from16 v2, p2

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    const/4 v7, 0x5

    const-string v5, "http:"

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_a

    iput-object v12, v0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x5

    goto :goto_4

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-object v12, v5

    move-object v13, v6

    move v3, v7

    if-eqz v1, :cond_30

    iget-object v5, v1, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object v5, v0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    :goto_4
    move v5, v4

    move v6, v9

    :goto_5
    const/16 v7, 0x5c

    const/16 v11, 0x2f

    move/from16 v18, v3

    if-ge v5, v10, :cond_d

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v11, :cond_c

    if-eq v3, v7, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v18

    goto :goto_5

    :cond_d
    :goto_6
    const-string v5, " \"\'<>#"

    const-string v3, ""

    const/16 v7, 0x23

    if-ge v6, v15, :cond_11

    if-eqz v1, :cond_11

    iget-object v15, v1, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object v11, v0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v15, v11}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v1}, Lˎᵢ/ʼᐧ;->ˑﹳ()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    invoke-virtual {v1}, Lˎᵢ/ʼᐧ;->ﹳٴ()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    iget-object v6, v1, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iput-object v6, v0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    iget v6, v1, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    iput v6, v0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Lˎᵢ/ʼᐧ;->ʽ()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eq v4, v10, :cond_f

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_21

    :cond_f
    invoke-virtual {v1}, Lˎᵢ/ʼᐧ;->ˈ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const/16 v6, 0x53

    invoke-static {v1, v9, v9, v5, v6}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lˊﹶ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_7
    iput-object v1, v0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    goto/16 :goto_12

    :cond_11
    :goto_8
    add-int/2addr v4, v6

    move v1, v9

    move v6, v1

    :goto_9
    const-string v11, "@/\\?#"

    invoke-static {v4, v10, v2, v11}, Lⁱᐧ/ʽ;->ʽ(IILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eq v11, v10, :cond_12

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_a

    :cond_12
    move v15, v14

    :goto_a
    if-eq v15, v14, :cond_17

    if-eq v15, v7, :cond_17

    const/16 v9, 0x2f

    if-eq v15, v9, :cond_17

    const/16 v9, 0x5c

    if-eq v15, v9, :cond_17

    const/16 v9, 0x3f

    if-eq v15, v9, :cond_17

    const/16 v9, 0x40

    if-eq v15, v9, :cond_13

    const/4 v9, 0x0

    goto :goto_9

    :cond_13
    const-string v9, " \"\':;<=>@[]^`{}|/\\?#"

    const-string v15, "%40"

    if-nez v1, :cond_16

    const/16 v7, 0x3a

    invoke-static {v2, v7, v4, v11}, Lⁱᐧ/ʽ;->ˈ(Ljava/lang/String;CII)I

    move-result v14

    const/16 v7, 0x70

    invoke-static {v2, v4, v14, v9, v7}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_14
    iput-object v4, v0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    if-eq v14, v11, :cond_15

    add-int/lit8 v14, v14, 0x1

    const/16 v7, 0x70

    invoke-static {v2, v14, v11, v9, v7}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    move/from16 v1, v18

    goto :goto_b

    :cond_15
    const/16 v7, 0x70

    :goto_b
    move/from16 v6, v18

    goto :goto_c

    :cond_16
    const/16 v7, 0x70

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x70

    invoke-static {v2, v4, v11, v9, v7}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    :goto_c
    add-int/lit8 v4, v11, 0x1

    const/16 v7, 0x23

    const/4 v9, 0x0

    const/4 v14, -0x1

    goto/16 :goto_9

    :cond_17
    move v1, v4

    :goto_d
    if-ge v1, v11, :cond_1a

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_1b

    const/16 v9, 0x5b

    if-eq v6, v9, :cond_18

    goto :goto_e

    :cond_18
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v11, :cond_19

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v14, 0x5d

    if-ne v6, v14, :cond_18

    :cond_19
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1a
    move v1, v11

    :cond_1b
    add-int/lit8 v6, v1, 0x1

    const/4 v7, 0x4

    const/16 v9, 0x22

    if-ge v6, v11, :cond_1e

    invoke-static {v4, v1, v7, v2}, Lʿˉ/ﹳٴ;->ˈ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lⁱᐧ/ⁱˊ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    const/16 v7, 0x78

    :try_start_0
    invoke-static {v2, v6, v11, v3, v7}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v12, v18

    if-gt v12, v7, :cond_1c

    const/high16 v12, 0x10000

    if-ge v7, v12, :cond_1c

    goto :goto_f

    :catch_0
    :cond_1c
    const/4 v7, -0x1

    :goto_f
    iput v7, v0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    const/4 v14, -0x1

    if-eq v7, v14, :cond_1d

    goto :goto_11

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid URL port: \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    const/4 v14, -0x1

    invoke-static {v4, v1, v7, v2}, Lʿˉ/ﹳٴ;->ˈ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lⁱᐧ/ⁱˊ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    iget-object v6, v0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/16 v14, 0x50

    goto :goto_10

    :cond_1f
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/16 v14, 0x1bb

    :cond_20
    :goto_10
    iput v14, v0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    :goto_11
    iget-object v6, v0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_2f

    move v4, v11

    :cond_21
    :goto_12
    const-string v1, "?#"

    invoke-static {v4, v10, v2, v1}, Lⁱᐧ/ʽ;->ʽ(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v4, v1, :cond_22

    goto/16 :goto_18

    :cond_22
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x2f

    if-eq v6, v9, :cond_23

    const/16 v9, 0x5c

    if-eq v6, v9, :cond_23

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v18, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v8, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_23
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :goto_13
    if-ge v4, v1, :cond_2c

    const-string v6, "/\\"

    invoke-static {v4, v1, v2, v6}, Lⁱᐧ/ʽ;->ʽ(IILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ge v6, v1, :cond_24

    const/4 v7, 0x1

    goto :goto_14

    :cond_24
    const/4 v7, 0x0

    :goto_14
    const-string v9, " \"<>^`{}|/\\?#"

    const/16 v11, 0x70

    invoke-static {v2, v4, v6, v9, v11}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v9, "."

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a

    const-string v9, "%2e"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    goto :goto_17

    :cond_25
    const-string v9, ".."

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    const-string v9, "%2e."

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_28

    const-string v9, ".%2e"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_28

    const-string v9, "%2e%2e"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26

    goto :goto_16

    :cond_26
    const/4 v12, 0x1

    invoke-static {v12, v8}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_27

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v12

    invoke-virtual {v8, v9, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_27
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_15
    if-eqz v7, :cond_2a

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_28
    :goto_16
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_29
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    :goto_17
    if-eqz v7, :cond_2b

    add-int/lit8 v4, v6, 0x1

    goto/16 :goto_13

    :cond_2b
    move v4, v6

    goto/16 :goto_13

    :cond_2c
    :goto_18
    if-ge v1, v10, :cond_2d

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x3f

    if-ne v4, v9, :cond_2d

    const/16 v4, 0x23

    invoke-static {v2, v4, v1, v10}, Lⁱᐧ/ʽ;->ˈ(Ljava/lang/String;CII)I

    move-result v6

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x50

    invoke-static {v2, v1, v6, v5, v4}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lˊﹶ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    move v1, v6

    :cond_2d
    if-ge v1, v10, :cond_2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_2e

    const/16 v18, 0x1

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x30

    invoke-static {v2, v1, v10, v3, v4}, Lʿˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    :cond_2e
    return-void

    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid URL host: \""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-le v1, v3, :cond_31

    invoke-static {v3, v2}, Lﹶˑ/ˆʾ;->ʽˑ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_31
    move-object v1, v2

    :goto_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    invoke-static {v3, v1}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public ⁱˊ()Lˎᵢ/ʼᐧ;
    .locals 15

    .prologue
    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v1, v3, v0}, Lʿˉ/ﹳٴ;->ˈ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v1, v3, v4}, Lʿˉ/ﹳٴ;->ˈ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lˊﹶ/ⁱˊ;->ˈ()I

    move-result v6

    iget-object v7, p0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    move-object v8, v7

    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v1

    :goto_0
    if-ge v11, v10, :cond_0

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Ljava/lang/String;

    invoke-static {v1, v1, v3, v12}, Lʿˉ/ﹳٴ;->ˈ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    const/4 v10, 0x0

    if-eqz v8, :cond_3

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v8, v9}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v12, v1

    :goto_1
    if-ge v12, v9, :cond_2

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_1

    const/4 v14, 0x3

    invoke-static {v1, v1, v14, v13}, Lʿˉ/ﹳٴ;->ˈ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_1
    move-object v13, v10

    :goto_2
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v8, v11

    goto :goto_3

    :cond_3
    move-object v8, v10

    :goto_3
    iget-object v9, p0, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_4

    invoke-static {v1, v1, v3, v9}, Lʿˉ/ﹳٴ;->ˈ(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4
    move-object v9, v10

    invoke-virtual {p0}, Lˊﹶ/ⁱˊ;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lˎᵢ/ʼᐧ;

    move-object v3, v0

    invoke-direct/range {v1 .. v10}, Lˎᵢ/ʼᐧ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ﹳٴ([ILˋⁱ/ᵔʾ;)V
    .locals 5

    .prologue
    iget v0, p0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    if-eqz v0, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    iput-object p2, p0, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v1, [[I

    array-length v2, v1

    if-lt v0, v2, :cond_2

    add-int/lit8 v2, v0, 0xa

    new-array v3, v2, [[I

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    new-array v1, v2, [Lˋⁱ/ᵔʾ;

    iget-object v2, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v2, [Lˋⁱ/ᵔʾ;

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    :cond_2
    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v0, [[I

    iget v1, p0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast p1, [Lˋⁱ/ᵔʾ;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    return-void
.end method

.method public ﾞᴵ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
