.class public final Lˎᵢ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:Lˎᵢ/ˆʾ;

.field public static final ᵎﹶ:Lˎᵢ/ˆʾ;

.field public static final ﾞᴵ:Lˎᵢ/ˆʾ;


# instance fields
.field public final ʽ:[Ljava/lang/String;

.field public final ˈ:[Ljava/lang/String;

.field public final ⁱˊ:Z

.field public final ﹳٴ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    sget-object v0, Lˎᵢ/ᵔᵢ;->ﹳᐧ:Lˎᵢ/ᵔᵢ;

    sget-object v1, Lˎᵢ/ᵔᵢ;->יـ:Lˎᵢ/ᵔᵢ;

    sget-object v2, Lˎᵢ/ᵔᵢ;->ˏי:Lˎᵢ/ᵔᵢ;

    sget-object v3, Lˎᵢ/ᵔᵢ;->ﾞʻ:Lˎᵢ/ᵔᵢ;

    sget-object v4, Lˎᵢ/ᵔᵢ;->ᵔʾ:Lˎᵢ/ᵔᵢ;

    sget-object v5, Lˎᵢ/ᵔᵢ;->ˉʿ:Lˎᵢ/ᵔᵢ;

    sget-object v6, Lˎᵢ/ᵔᵢ;->ˉˆ:Lˎᵢ/ᵔᵢ;

    sget-object v7, Lˎᵢ/ᵔᵢ;->ᵔﹳ:Lˎᵢ/ᵔᵢ;

    sget-object v8, Lˎᵢ/ᵔᵢ;->ʼᐧ:Lˎᵢ/ᵔᵢ;

    const/16 v9, 0x9

    new-array v10, v9, [Lˎᵢ/ᵔᵢ;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v12, 0x1

    aput-object v1, v10, v12

    const/4 v13, 0x2

    aput-object v2, v10, v13

    const/4 v14, 0x3

    aput-object v3, v10, v14

    const/4 v15, 0x4

    aput-object v4, v10, v15

    const/16 v16, 0x5

    aput-object v5, v10, v16

    const/16 v17, 0x6

    aput-object v6, v10, v17

    const/16 v18, 0x7

    aput-object v7, v10, v18

    const/16 v19, 0x8

    aput-object v8, v10, v19

    invoke-static {v10}, Lﹶˈ/ٴﹶ;->ʿ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move/from16 v20, v9

    const/16 v9, 0x10

    new-array v9, v9, [Lˎᵢ/ᵔᵢ;

    aput-object v0, v9, v11

    aput-object v1, v9, v12

    aput-object v2, v9, v13

    aput-object v3, v9, v14

    aput-object v4, v9, v15

    aput-object v5, v9, v16

    aput-object v6, v9, v17

    aput-object v7, v9, v18

    aput-object v8, v9, v19

    sget-object v0, Lˎᵢ/ᵔᵢ;->ˆʾ:Lˎᵢ/ᵔᵢ;

    aput-object v0, v9, v20

    sget-object v0, Lˎᵢ/ᵔᵢ;->ٴﹶ:Lˎᵢ/ᵔᵢ;

    const/16 v1, 0xa

    aput-object v0, v9, v1

    sget-object v0, Lˎᵢ/ᵔᵢ;->ᵔᵢ:Lˎᵢ/ᵔᵢ;

    const/16 v1, 0xb

    aput-object v0, v9, v1

    sget-object v0, Lˎᵢ/ᵔᵢ;->ʼˎ:Lˎᵢ/ᵔᵢ;

    const/16 v1, 0xc

    aput-object v0, v9, v1

    sget-object v0, Lˎᵢ/ᵔᵢ;->ﾞᴵ:Lˎᵢ/ᵔᵢ;

    const/16 v1, 0xd

    aput-object v0, v9, v1

    sget-object v0, Lˎᵢ/ᵔᵢ;->ᵎﹶ:Lˎᵢ/ᵔᵢ;

    const/16 v1, 0xe

    aput-object v0, v9, v1

    sget-object v0, Lˎᵢ/ᵔᵢ;->ˑﹳ:Lˎᵢ/ᵔᵢ;

    const/16 v1, 0xf

    aput-object v0, v9, v1

    invoke-static {v9}, Lﹶˈ/ٴﹶ;->ʿ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lˉˆ/ᵢˋ;

    invoke-direct {v1}, Lˉˆ/ᵢˋ;-><init>()V

    new-array v2, v11, [Lˎᵢ/ᵔᵢ;

    invoke-interface {v10, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lˎᵢ/ᵔᵢ;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lˎᵢ/ᵔᵢ;

    invoke-virtual {v1, v2}, Lˉˆ/ᵢˋ;->ⁱˊ([Lˎᵢ/ᵔᵢ;)V

    new-array v2, v13, [Lˎᵢ/ٴᵢ;

    sget-object v3, Lˎᵢ/ٴᵢ;->ᴵˊ:Lˎᵢ/ٴᵢ;

    aput-object v3, v2, v11

    sget-object v4, Lˎᵢ/ٴᵢ;->ʽʽ:Lˎᵢ/ٴᵢ;

    aput-object v4, v2, v12

    invoke-virtual {v1, v2}, Lˉˆ/ᵢˋ;->ʽ([Lˎᵢ/ٴᵢ;)V

    iput-boolean v12, v1, Lˉˆ/ᵢˋ;->ⁱˊ:Z

    invoke-virtual {v1}, Lˉˆ/ᵢˋ;->ﹳٴ()Lˎᵢ/ˆʾ;

    new-instance v1, Lˉˆ/ᵢˋ;

    invoke-direct {v1}, Lˉˆ/ᵢˋ;-><init>()V

    new-array v2, v11, [Lˎᵢ/ᵔᵢ;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lˎᵢ/ᵔᵢ;

    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lˎᵢ/ᵔᵢ;

    invoke-virtual {v1, v2}, Lˉˆ/ᵢˋ;->ⁱˊ([Lˎᵢ/ᵔᵢ;)V

    new-array v2, v13, [Lˎᵢ/ٴᵢ;

    aput-object v3, v2, v11

    aput-object v4, v2, v12

    invoke-virtual {v1, v2}, Lˉˆ/ᵢˋ;->ʽ([Lˎᵢ/ٴᵢ;)V

    iput-boolean v12, v1, Lˉˆ/ᵢˋ;->ⁱˊ:Z

    invoke-virtual {v1}, Lˉˆ/ᵢˋ;->ﹳٴ()Lˎᵢ/ˆʾ;

    move-result-object v1

    sput-object v1, Lˎᵢ/ˆʾ;->ˑﹳ:Lˎᵢ/ˆʾ;

    new-instance v1, Lˉˆ/ᵢˋ;

    invoke-direct {v1}, Lˉˆ/ᵢˋ;-><init>()V

    new-array v2, v11, [Lˎᵢ/ᵔᵢ;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lˎᵢ/ᵔᵢ;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lˎᵢ/ᵔᵢ;

    invoke-virtual {v1, v0}, Lˉˆ/ᵢˋ;->ⁱˊ([Lˎᵢ/ᵔᵢ;)V

    new-array v0, v15, [Lˎᵢ/ٴᵢ;

    aput-object v3, v0, v11

    aput-object v4, v0, v12

    sget-object v2, Lˎᵢ/ٴᵢ;->ˈٴ:Lˎᵢ/ٴᵢ;

    aput-object v2, v0, v13

    sget-object v2, Lˎᵢ/ٴᵢ;->ᴵᵔ:Lˎᵢ/ٴᵢ;

    aput-object v2, v0, v14

    invoke-virtual {v1, v0}, Lˉˆ/ᵢˋ;->ʽ([Lˎᵢ/ٴᵢ;)V

    iput-boolean v12, v1, Lˉˆ/ᵢˋ;->ⁱˊ:Z

    invoke-virtual {v1}, Lˉˆ/ᵢˋ;->ﹳٴ()Lˎᵢ/ˆʾ;

    move-result-object v0

    sput-object v0, Lˎᵢ/ˆʾ;->ﾞᴵ:Lˎᵢ/ˆʾ;

    new-instance v0, Lˎᵢ/ˆʾ;

    const/4 v1, 0x0

    invoke-direct {v0, v11, v11, v1, v1}, Lˎᵢ/ˆʾ;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lˎᵢ/ˆʾ;->ᵎﹶ:Lˎᵢ/ˆʾ;

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lˎᵢ/ˆʾ;->ﹳٴ:Z

    iput-boolean p2, p0, Lˎᵢ/ˆʾ;->ⁱˊ:Z

    iput-object p3, p0, Lˎᵢ/ˆʾ;->ʽ:[Ljava/lang/String;

    iput-object p4, p0, Lˎᵢ/ˆʾ;->ˈ:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    instance-of v0, p1, Lˎᵢ/ˆʾ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lˎᵢ/ˆʾ;

    iget-boolean v0, p1, Lˎᵢ/ˆʾ;->ﹳٴ:Z

    iget-boolean v1, p0, Lˎᵢ/ˆʾ;->ﹳٴ:Z

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_5

    iget-object v0, p0, Lˎᵢ/ˆʾ;->ʽ:[Ljava/lang/String;

    iget-object v1, p1, Lˎᵢ/ˆʾ;->ʽ:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lˎᵢ/ˆʾ;->ˈ:[Ljava/lang/String;

    iget-object v1, p1, Lˎᵢ/ˆʾ;->ˈ:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lˎᵢ/ˆʾ;->ⁱˊ:Z

    iget-boolean p1, p1, Lˎᵢ/ˆʾ;->ⁱˊ:Z

    if-eq v0, p1, :cond_5

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˎᵢ/ˆʾ;->ﹳٴ:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lˎᵢ/ˆʾ;->ʽ:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lˎᵢ/ˆʾ;->ˈ:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :cond_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lˎᵢ/ˆʾ;->ⁱˊ:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    return v2

    :cond_2
    const/16 v0, 0x11

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˎᵢ/ˆʾ;->ﹳٴ:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectionSpec(cipherSuites="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lˎᵢ/ˆʾ;->ⁱˊ()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "[all enabled]"

    invoke-static {v1, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lˎᵢ/ˆʾ;->ʽ()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lˎᵢ/ˆʾ;->ⁱˊ:Z

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ᵔʾ(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Ljava/util/ArrayList;
    .locals 5

    .prologue
    iget-object v0, p0, Lˎᵢ/ˆʾ;->ˈ:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Lˈˋ/ʾˊ;->ˉˆ(Ljava/lang/String;)Lˎᵢ/ٴᵢ;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ⁱˊ()Ljava/util/ArrayList;
    .locals 6

    .prologue
    iget-object v0, p0, Lˎᵢ/ˆʾ;->ʽ:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lˎᵢ/ᵔᵢ;->ⁱˊ:Lˎᵢ/ⁱˊ;

    invoke-virtual {v5, v4}, Lˎᵢ/ⁱˊ;->ⁱˊ(Ljava/lang/String;)Lˎᵢ/ᵔᵢ;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ﹳٴ(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 9

    .prologue
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lˎᵢ/ˆʾ;->ʽ:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lˎᵢ/ᵔᵢ;->ʽ:Lˎᵢ/ᵎﹶ;

    invoke-static {v1, v0, v2}, Lⁱᐧ/ʽ;->ʼˎ([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lˎᵢ/ˆʾ;->ˈ:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lˆᵔ/ﹳٴ;->ᴵˊ:Lˆᵔ/ﹳٴ;

    invoke-static {v2, v1, v3}, Lⁱᐧ/ʽ;->ʼˎ([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lˎᵢ/ᵔᵢ;->ʽ:Lˎᵢ/ᵎﹶ;

    sget-object v4, Lⁱᐧ/ʽ;->ﹳٴ:[B

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    const/4 v6, -0x1

    if-ge v5, v4, :cond_3

    aget-object v7, v2, v5

    const-string v8, "TLS_FALLBACK_SCSV"

    invoke-virtual {v3, v7, v8}, Lˎᵢ/ᵎﹶ;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_2
    if-eqz p2, :cond_4

    if-eq v5, v6, :cond_4

    aget-object p2, v2, v5

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object p2, v0, v2

    :cond_4
    array-length p2, v0

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iget-boolean v0, p0, Lˎᵢ/ˆʾ;->ﹳٴ:Z

    if-eqz v0, :cond_a

    array-length v2, p2

    if-eqz v2, :cond_9

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v2, v1

    if-eqz v2, :cond_7

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v2, Lˎᵢ/ˆʾ;

    iget-boolean v3, p0, Lˎᵢ/ˆʾ;->ⁱˊ:Z

    invoke-direct {v2, v0, v3, p2, v1}, Lˎᵢ/ˆʾ;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2}, Lˎᵢ/ˆʾ;->ʽ()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, v2, Lˎᵢ/ˆʾ;->ˈ:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Lˎᵢ/ˆʾ;->ⁱˊ()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, v2, Lˎᵢ/ˆʾ;->ʽ:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one TLS version is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no TLS versions for cleartext connections"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one cipher suite is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no cipher suites for cleartext connections"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
