.class public final Lˊᐧ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final ᴵˊ:Ljava/lang/String;


# instance fields
.field public final ʾˋ:Lˊᐧ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lˊᐧ/ʽﹳ;->ᴵˊ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lˊᐧ/ʼˎ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lˊᐧ/ʽﹳ;

    iget-object v0, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    iget-object p1, p1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {v0, p1}, Lˊᐧ/ʼˎ;->ⁱˊ(Lˊᐧ/ʼˎ;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lˊᐧ/ʽﹳ;

    if-eqz v0, :cond_0

    check-cast p1, Lˊᐧ/ʽﹳ;

    iget-object p1, p1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    iget-object v0, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {v0}, Lˊᐧ/ʼˎ;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toFile()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {v0}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Lˊᐧ/ʽﹳ;
    .locals 10

    .prologue
    sget-object v0, Lⁱٴ/ʽ;->ˈ:Lˊᐧ/ʼˎ;

    iget-object v1, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-static {v1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lⁱٴ/ʽ;->ﹳٴ:Lˊᐧ/ʼˎ;

    invoke-static {v1, v2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Lⁱٴ/ʽ;->ⁱˊ:Lˊᐧ/ʼˎ;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Lⁱٴ/ʽ;->ˑﹳ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v5

    iget-object v6, v4, Lˊᐧ/ʼˎ;->ʾˋ:[B

    array-length v7, v6

    sub-int/2addr v5, v7

    array-length v6, v6

    invoke-virtual {v1, v5, v4, v6}, Lˊᐧ/ʼˎ;->ٴﹶ(ILˊᐧ/ʼˎ;I)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v4

    if-ne v4, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4, v2, v7}, Lˊᐧ/ʼˎ;->ٴﹶ(ILˊᐧ/ʼˎ;I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4, v3, v7}, Lˊᐧ/ʼˎ;->ٴﹶ(ILˊᐧ/ʼˎ;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lˊᐧ/ʼˎ;->ᵎﹶ()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lˊᐧ/ʼˎ;->ʼˎ([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lˊᐧ/ʼˎ;->ᵎﹶ()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lˊᐧ/ʼˎ;->ʼˎ([B)I

    move-result v2

    :goto_0
    const/4 v8, 0x0

    if-ne v2, v6, :cond_5

    invoke-virtual {p0}, Lˊᐧ/ʽﹳ;->ﾞᴵ()Ljava/lang/Character;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v0

    if-ne v0, v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lˊᐧ/ʽﹳ;

    invoke-static {v1, v8, v5, v7}, Lˊᐧ/ʼˎ;->ᵔʾ(Lˊᐧ/ʼˎ;III)Lˊᐧ/ʼˎ;

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʽﹳ;-><init>(Lˊᐧ/ʼˎ;)V

    return-object v0

    :cond_5
    if-ne v2, v7, :cond_6

    invoke-virtual {v3}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v5

    invoke-virtual {v1, v8, v3, v5}, Lˊᐧ/ʼˎ;->ٴﹶ(ILˊᐧ/ʼˎ;I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    if-ne v2, v4, :cond_8

    invoke-virtual {p0}, Lˊᐧ/ʽﹳ;->ﾞᴵ()Ljava/lang/Character;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v0

    if-ne v0, v6, :cond_7

    goto :goto_1

    :cond_7
    new-instance v0, Lˊᐧ/ʽﹳ;

    invoke-static {v1, v8, v6, v7}, Lˊᐧ/ʼˎ;->ᵔʾ(Lˊᐧ/ʼˎ;III)Lˊᐧ/ʼˎ;

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʽﹳ;-><init>(Lˊᐧ/ʼˎ;)V

    return-object v0

    :cond_8
    if-ne v2, v4, :cond_9

    new-instance v1, Lˊᐧ/ʽﹳ;

    invoke-direct {v1, v0}, Lˊᐧ/ʽﹳ;-><init>(Lˊᐧ/ʼˎ;)V

    return-object v1

    :cond_9
    if-nez v2, :cond_a

    new-instance v0, Lˊᐧ/ʽﹳ;

    invoke-static {v1, v8, v7, v7}, Lˊᐧ/ʼˎ;->ᵔʾ(Lˊᐧ/ʼˎ;III)Lˊᐧ/ʼˎ;

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʽﹳ;-><init>(Lˊᐧ/ʼˎ;)V

    return-object v0

    :cond_a
    new-instance v0, Lˊᐧ/ʽﹳ;

    invoke-static {v1, v8, v2, v7}, Lˊᐧ/ʼˎ;->ᵔʾ(Lˊᐧ/ʼˎ;III)Lˊᐧ/ʼˎ;

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʽﹳ;-><init>(Lˊᐧ/ʼˎ;)V

    return-object v0

    :cond_b
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ˈ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ʽﹳ;
    .locals 11

    .prologue
    iget-object v0, p1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-static {p0}, Lⁱٴ/ʽ;->ﹳٴ(Lˊᐧ/ʽﹳ;)I

    move-result v1

    iget-object v2, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    new-instance v6, Lˊᐧ/ʽﹳ;

    invoke-virtual {v2, v4, v1}, Lˊᐧ/ʼˎ;->ˉʿ(II)Lˊᐧ/ʼˎ;

    move-result-object v1

    invoke-direct {v6, v1}, Lˊᐧ/ʽﹳ;-><init>(Lˊᐧ/ʼˎ;)V

    :goto_0
    invoke-static {p1}, Lⁱٴ/ʽ;->ﹳٴ(Lˊᐧ/ʽﹳ;)I

    move-result v1

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lˊᐧ/ʽﹳ;

    iget-object v7, p1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {v7, v4, v1}, Lˊᐧ/ʼˎ;->ˉʿ(II)Lˊᐧ/ʼˎ;

    move-result-object v1

    invoke-direct {v3, v1}, Lˊᐧ/ʽﹳ;-><init>(Lˊᐧ/ʼˎ;)V

    :goto_1
    invoke-static {v6, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " and "

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lˊᐧ/ʽﹳ;->ﹳٴ()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lˊᐧ/ʽﹳ;->ﹳٴ()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_2

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    if-ne v8, v7, :cond_3

    invoke-virtual {v2}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v2

    invoke-virtual {v0}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v7

    if-ne v2, v7, :cond_3

    const-string p1, "."

    invoke-static {p1, v4}, Lᵎˉ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Z)Lˊᐧ/ʽﹳ;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v6, v8, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    sget-object v7, Lⁱٴ/ʽ;->ˑﹳ:Lˊᐧ/ʼˎ;

    invoke-interface {v2, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v5, :cond_8

    sget-object v2, Lⁱٴ/ʽ;->ˈ:Lˊᐧ/ʼˎ;

    invoke-static {v0, v2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p0

    :cond_4
    new-instance v0, Lˊᐧ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lⁱٴ/ʽ;->ʽ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ʼˎ;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {p0}, Lⁱٴ/ʽ;->ʽ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ʼˎ;

    move-result-object p1

    if-nez p1, :cond_5

    sget-object p1, Lˊᐧ/ʽﹳ;->ᴵˊ:Ljava/lang/String;

    invoke-static {p1}, Lⁱٴ/ʽ;->ﾞᴵ(Ljava/lang/String;)Lˊᐧ/ʼˎ;

    move-result-object p1

    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v8

    :goto_3
    if-ge v3, v2, :cond_6

    sget-object v5, Lⁱٴ/ʽ;->ˑﹳ:Lˊᐧ/ʼˎ;

    invoke-virtual {v0, v5}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    if-ge v8, v2, :cond_7

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˊᐧ/ʼˎ;

    invoke-virtual {v0, v3}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v0, v4}, Lⁱٴ/ʽ;->ˈ(Lˊᐧ/ﾞᴵ;Z)Lˊᐧ/ʽﹳ;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Impossible relative path to resolve: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Paths of different roots cannot be relative to each other: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˑﹳ(Ljava/lang/String;)Lˊᐧ/ʽﹳ;
    .locals 1

    new-instance v0, Lˊᐧ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->ʾﾞ(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lⁱٴ/ʽ;->ˈ(Lˊᐧ/ﾞᴵ;Z)Lˊᐧ/ʽﹳ;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lⁱٴ/ʽ;->ⁱˊ(Lˊᐧ/ʽﹳ;Lˊᐧ/ʽﹳ;Z)Lˊᐧ/ʽﹳ;

    move-result-object p1

    return-object p1
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v0, Lⁱٴ/ʽ;->ﹳٴ:Lˊᐧ/ʼˎ;

    iget-object v1, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lˊᐧ/ʼˎ;->ᵎﹶ()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lˊᐧ/ʼˎ;->ʼˎ([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lⁱٴ/ʽ;->ⁱˊ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lˊᐧ/ʼˎ;->ᵎﹶ()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lˊᐧ/ʼˎ;->ʼˎ([B)I

    move-result v0

    :goto_0
    const/4 v3, 0x2

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lˊᐧ/ʼˎ;->ᵔʾ(Lˊᐧ/ʼˎ;III)Lˊᐧ/ʼˎ;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lˊᐧ/ʽﹳ;->ﾞᴵ()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v0

    if-ne v0, v3, :cond_2

    sget-object v1, Lˊᐧ/ʼˎ;->ˈٴ:Lˊᐧ/ʼˎ;

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Ljava/util/ArrayList;
    .locals 8

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lⁱٴ/ʽ;->ﹳٴ(Lˊᐧ/ʽﹳ;)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x5c

    iget-object v4, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v4, v1}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_0
    invoke-virtual {v4}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v2

    move v5, v1

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {v4, v1}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_2

    invoke-virtual {v4, v1}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result v6

    if-ne v6, v3, :cond_3

    :cond_2
    invoke-virtual {v4, v5, v1}, Lˊᐧ/ʼˎ;->ˉʿ(II)Lˊᐧ/ʼˎ;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v1, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v1

    if-ge v5, v1, :cond_5

    invoke-virtual {v4}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v1

    invoke-virtual {v4, v5, v1}, Lˊᐧ/ʼˎ;->ˉʿ(II)Lˊᐧ/ʼˎ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public final ﾞᴵ()Ljava/lang/Character;
    .locals 3

    .prologue
    sget-object v0, Lⁱٴ/ʽ;->ﹳٴ:Lˊᐧ/ʼˎ;

    iget-object v1, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-static {v1, v0}, Lˊᐧ/ʼˎ;->ﾞᴵ(Lˊᐧ/ʼˎ;Lˊᐧ/ʼˎ;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x61

    if-gt v1, v0, :cond_3

    const/16 v1, 0x7b

    if-ge v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x41

    if-gt v1, v0, :cond_4

    const/16 v1, 0x5b

    if-ge v0, v1, :cond_4

    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
