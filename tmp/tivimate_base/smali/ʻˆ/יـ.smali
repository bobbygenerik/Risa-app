.class public abstract Lʻˆ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lʻˆ/יـ;->ﹳٴ:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static ʼˎ(ILjava/lang/String;Lᐧˎ/ﹳᐧ;ZZ)Lˆʻ/ˆʾ;
    .locals 0

    .prologue
    invoke-static {p2}, Lʻˆ/יـ;->ᵔᵢ(Lᐧˎ/ﹳᐧ;)I

    move-result p2

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    const/4 p4, 0x0

    if-ltz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance p0, Lˆʻ/ˉˆ;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lˆʻ/ˉˆ;-><init>(Ljava/lang/String;Ljava/lang/String;Lʼʻ/ʿᵢ;)V

    return-object p0

    :cond_1
    new-instance p0, Lˆʻ/ˑﹳ;

    const-string p3, "und"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lˆʻ/ˑﹳ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse uint8 attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lʻᴵ/ﾞᴵ;->ˈ(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method public static ʽ(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6

    .prologue
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lʻˆ/ـˆ;

    iget-object v4, v4, Lʻˆ/ـˆ;->ﹳٴ:Lʻˆ/ˏי;

    iget-object v4, v4, Lʻˆ/ˏי;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    iget-object v4, v4, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v4}, Lʽⁱ/ˉٴ;->ˉˆ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p0, "video/mp4"

    return-object p0

    :cond_1
    invoke-static {v4}, Lʽⁱ/ˉٴ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lʽⁱ/ˉٴ;->ˉʿ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "image/heic"

    invoke-static {v4, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "image/heif"

    goto :goto_0

    :cond_3
    const-string v5, "image/avif"

    invoke-static {v4, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    const-string p0, "audio/mp4"

    return-object p0

    :cond_5
    if-eqz v3, :cond_6

    return-object v3

    :cond_6
    const-string p0, "application/mp4"

    return-object p0
.end method

.method public static ˆʾ([B)Lʻʽ/ʼˎ;
    .locals 13

    .prologue
    new-instance v0, Lᐧˎ/ﹳᐧ;

    invoke-direct {v0, p0}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iget p0, v0, Lᐧˎ/ﹳᐧ;->ʽ:I

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v3

    const-string v4, "PsshAtomUtil"

    if-eq v3, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Advertised atom size ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") does not match buffer size: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    const v3, 0x70737368    # 3.013775E29f

    if-eq v1, v3, :cond_2

    const-string p0, "Atom type is not pssh: "

    invoke-static {v1, p0, v4}, Lˉˆ/ٴᴵ;->יـ(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    invoke-static {v1}, Lʻˆ/ᵔᵢ;->ˑﹳ(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    const-string p0, "Unsupported pssh version: "

    invoke-static {v1, p0, v4}, Lˉˆ/ٴᴵ;->יـ(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    new-instance v5, Ljava/util/UUID;

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->יـ()J

    move-result-wide v6

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->יـ()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v3

    new-array v6, v3, [Ljava/util/UUID;

    move v7, p0

    :goto_0
    if-ge v7, v3, :cond_5

    new-instance v8, Ljava/util/UUID;

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->יـ()J

    move-result-wide v9

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->יـ()J

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Ljava/util/UUID;-><init>(JJ)V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move-object v6, v2

    :cond_5
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v3

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v7

    if-eq v3, v7, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Atom data size ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") does not match the bytes left: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_6
    new-array v2, v3, [B

    invoke-virtual {v0, v2, p0, v3}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    new-instance p0, Lʻʽ/ʼˎ;

    invoke-direct {p0, v5, v1, v2, v6}, Lʻʽ/ʼˎ;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    return-object p0
.end method

.method public static ˈ(IZ)Z
    .locals 3

    .prologue
    ushr-int/lit8 v0, p0, 0x8

    const v1, 0x336770

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const v0, 0x68656963

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_3

    sget-object v1, Lʻˆ/יـ;->ﹳٴ:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public static varargs ˉʿ(ILʽⁱ/ٴᵢ;Lʽⁱ/ᵔﹳ;Lʽⁱ/ٴᵢ;[Lʽⁱ/ٴᵢ;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lʽⁱ/ٴᵢ;

    new-array v1, v0, [Lʽⁱ/ˊʻ;

    invoke-direct {p3, v1}, Lʽⁱ/ٴᵢ;-><init>([Lʽⁱ/ˊʻ;)V

    :goto_0
    if-eqz p1, :cond_3

    move v1, v0

    :goto_1
    iget-object v2, p1, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    instance-of v3, v2, Lʻᴵ/ⁱˊ;

    if-eqz v3, :cond_2

    check-cast v2, Lʻᴵ/ⁱˊ;

    iget-object v3, v2, Lʻᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    const-string v4, "com.android.capture.fps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne p0, v3, :cond_2

    new-array v3, v4, [Lʽⁱ/ˊʻ;

    aput-object v2, v3, v0

    invoke-virtual {p3, v3}, Lʽⁱ/ٴᵢ;->ﹳٴ([Lʽⁱ/ˊʻ;)Lʽⁱ/ٴᵢ;

    move-result-object p3

    goto :goto_2

    :cond_1
    new-array v3, v4, [Lʽⁱ/ˊʻ;

    aput-object v2, v3, v0

    invoke-virtual {p3, v3}, Lʽⁱ/ٴᵢ;->ﹳٴ([Lʽⁱ/ˊʻ;)Lʽⁱ/ٴᵢ;

    move-result-object p3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    array-length p0, p4

    :goto_3
    if-ge v0, p0, :cond_4

    aget-object p1, p4, v0

    invoke-virtual {p3, p1}, Lʽⁱ/ٴᵢ;->ⁱˊ(Lʽⁱ/ٴᵢ;)Lʽⁱ/ٴᵢ;

    move-result-object p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object p0, p3, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    array-length p0, p0

    if-lez p0, :cond_5

    iput-object p3, p2, Lʽⁱ/ᵔﹳ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    :cond_5
    return-void
.end method

.method public static ˑﹳ(ILᐧˎ/ﹳᐧ;)Lˆʻ/ˑﹳ;
    .locals 3

    .prologue
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v0

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p1, v0}, Lᐧˎ/ﹳᐧ;->ʽﹳ(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lˆʻ/ˑﹳ;

    const-string v0, "und"

    invoke-direct {p1, v0, p0, p0}, Lˆʻ/ˑﹳ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse comment attribute: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lʻᴵ/ﾞᴵ;->ˈ(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static ٴﹶ(Ljava/util/UUID;[B)[B
    .locals 3

    .prologue
    invoke-static {p1}, Lʻˆ/יـ;->ˆʾ([B)Lʻʽ/ʼˎ;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lʻʽ/ʼˎ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    invoke-virtual {p0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "UUID mismatch. Expected: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", got: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PsshAtomUtil"

    invoke-static {p1, p0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object p0, p1, Lʻʽ/ʼˎ;->ˈ:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0
.end method

.method public static ᵎﹶ(ILjava/lang/String;Lᐧˎ/ﹳᐧ;)Lˆʻ/ˉˆ;
    .locals 4

    .prologue
    invoke-virtual {p2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v0

    invoke-virtual {p2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {p2}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v0

    if-lez v0, :cond_1

    const-string p0, ""

    invoke-static {v0, p0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result p2

    if-lez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance p2, Lˆʻ/ˉˆ;

    invoke-static {p0}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Lˆʻ/ˉˆ;-><init>(Ljava/lang/String;Ljava/lang/String;Lʼʻ/ʿᵢ;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse index/count attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lʻᴵ/ﾞᴵ;->ˈ(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static ᵔʾ(Lˊﾞ/ʼᐧ;ZZ)Lˊﾞ/ᴵᵔ;
    .locals 25

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    const-wide/16 v7, 0x1000

    if-eqz v6, :cond_1

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v2

    :cond_1
    :goto_0
    long-to-int v7, v7

    new-instance v8, Lᐧˎ/ﹳᐧ;

    const/16 v9, 0x40

    invoke-direct {v8, v9}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_1
    if-ge v10, v7, :cond_2

    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v14, v8, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v15, 0x1

    invoke-interface {v0, v14, v9, v13, v15}, Lˊﾞ/ʼᐧ;->ʻٴ([BIIZ)Z

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    move v4, v9

    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v8}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v16

    invoke-virtual {v8}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v14

    const-wide/16 v18, 0x1

    cmp-long v18, v16, v18

    if-nez v18, :cond_4

    move-wide/from16 v18, v4

    iget-object v4, v8, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v0, v4, v13, v13}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    const/16 v4, 0x10

    invoke-virtual {v8, v4}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    invoke-virtual {v8}, Lᐧˎ/ﹳᐧ;->יـ()J

    move-result-wide v16

    move/from16 v21, v10

    :goto_2
    move-wide/from16 v9, v16

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    move-wide/from16 v18, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-nez v4, :cond_5

    invoke-interface {v0}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v4

    cmp-long v20, v4, v18

    if-eqz v20, :cond_5

    invoke-interface {v0}, Lˊﾞ/ʼᐧ;->ʾᵎ()J

    move-result-wide v16

    sub-long v4, v4, v16

    move/from16 v21, v10

    int-to-long v9, v13

    add-long v16, v4, v9

    :goto_3
    move v4, v13

    goto :goto_2

    :cond_5
    move/from16 v21, v10

    goto :goto_3

    :goto_4
    int-to-long v12, v4

    cmp-long v17, v9, v12

    if-gez v17, :cond_6

    new-instance v0, Lʻˆ/ᵔʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :cond_6
    add-int v4, v21, v4

    move-object/from16 v17, v5

    const v5, 0x6d6f6f76

    if-ne v14, v5, :cond_8

    long-to-int v5, v9

    add-int/2addr v7, v5

    if-eqz v6, :cond_7

    int-to-long v9, v7

    cmp-long v5, v9, v2

    if-lez v5, :cond_7

    long-to-int v7, v2

    :cond_7
    move v10, v4

    move-wide/from16 v4, v18

    const/4 v9, 0x0

    goto :goto_1

    :cond_8
    const v5, 0x6d6f6f66

    if-eq v14, v5, :cond_16

    const v5, 0x6d766578

    if-ne v14, v5, :cond_9

    goto/16 :goto_8

    :cond_9
    const v5, 0x6d646174

    if-ne v14, v5, :cond_a

    move v11, v15

    :cond_a
    move-wide/from16 v21, v2

    int-to-long v2, v4

    add-long/2addr v2, v9

    sub-long/2addr v2, v12

    move-wide/from16 v23, v2

    int-to-long v2, v7

    cmp-long v2, v23, v2

    if-ltz v2, :cond_b

    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_b
    sub-long/2addr v9, v12

    long-to-int v2, v9

    add-int v10, v4, v2

    const v3, 0x66747970

    if-ne v14, v3, :cond_14

    const/16 v3, 0x8

    if-ge v2, v3, :cond_c

    new-instance v0, Lʻˆ/ᵔʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :cond_c
    invoke-virtual {v8, v2}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v3, v8, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v2}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-virtual {v8}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v2

    invoke-static {v2, v1}, Lʻˆ/יـ;->ˈ(IZ)Z

    move-result v2

    if-eqz v2, :cond_d

    move v11, v15

    :cond_d
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v8}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    div-int/2addr v3, v2

    if-nez v11, :cond_10

    if-lez v3, :cond_10

    new-array v12, v3, [I

    move v2, v4

    :goto_5
    if-ge v2, v3, :cond_f

    invoke-virtual {v8}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v5

    aput v5, v12, v2

    invoke-static {v5, v1}, Lʻˆ/יـ;->ˈ(IZ)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    move v15, v11

    goto :goto_6

    :cond_10
    move v15, v11

    move-object/from16 v12, v17

    :goto_6
    if-nez v15, :cond_13

    new-instance v0, Lʻˆ/ᵔʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-eqz v12, :cond_12

    sget v1, Lᵎᐧ/ﹳٴ;->ʽʽ:I

    array-length v1, v12

    if-nez v1, :cond_11

    return-object v0

    :cond_11
    new-instance v1, Lᵎᐧ/ﹳٴ;

    array-length v2, v12

    invoke-static {v12, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-direct {v1, v2}, Lᵎᐧ/ﹳٴ;-><init>([I)V

    return-object v0

    :cond_12
    sget v1, Lᵎᐧ/ﹳٴ;->ʽʽ:I

    return-object v0

    :cond_13
    move v11, v15

    goto :goto_7

    :cond_14
    const/4 v4, 0x0

    if-eqz v2, :cond_15

    invoke-interface {v0, v2}, Lˊﾞ/ʼᐧ;->ᴵˊ(I)V

    :cond_15
    :goto_7
    move v9, v4

    move-wide/from16 v4, v18

    move-wide/from16 v2, v21

    goto/16 :goto_1

    :cond_16
    :goto_8
    move v9, v15

    goto :goto_a

    :goto_9
    move v9, v4

    :goto_a
    if-nez v11, :cond_17

    sget-object v0, Lʻˆ/ᵔʾ;->ʽ:Lʻˆ/ᵔʾ;

    return-object v0

    :cond_17
    move/from16 v0, p1

    if-eq v0, v9, :cond_19

    if-eqz v9, :cond_18

    sget-object v0, Lʻˆ/ᵔʾ;->ﹳٴ:Lʻˆ/ᵔʾ;

    return-object v0

    :cond_18
    sget-object v0, Lʻˆ/ᵔʾ;->ⁱˊ:Lʻˆ/ᵔʾ;

    return-object v0

    :cond_19
    return-object v17
.end method

.method public static ᵔᵢ(Lᐧˎ/ﹳᐧ;)I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v0

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_4

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    add-int/lit8 v0, v0, -0x10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ᵔᵢ()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ᴵˊ()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse data atom to int"

    invoke-static {p0, v0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static ⁱˊ(Lʽⁱ/ٴᵢ;Ljava/lang/String;)Lʻᴵ/ⁱˊ;
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    instance-of v2, v1, Lʻᴵ/ⁱˊ;

    if-eqz v2, :cond_0

    check-cast v1, Lʻᴵ/ⁱˊ;

    iget-object v2, v1, Lʻᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﹳٴ(Ljava/util/UUID;[Ljava/util/UUID;[B)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, 0x20

    if-eqz p1, :cond_1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, 0x70737368    # 3.013775E29f

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    const/high16 v1, 0x1000000

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length p0, p1

    move v1, v0

    :goto_2
    if-ge v1, p0, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    array-length p0, p2

    if-eqz p0, :cond_4

    array-length p0, p2

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static ﾞʻ(ILjava/lang/String;Lᐧˎ/ﹳᐧ;)Lˆʻ/ˉˆ;
    .locals 4

    .prologue
    invoke-virtual {p2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v0

    invoke-virtual {p2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p2, v0}, Lᐧˎ/ﹳᐧ;->ʽﹳ(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lˆʻ/ˉˆ;

    invoke-static {p0}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Lˆʻ/ˉˆ;-><init>(Ljava/lang/String;Ljava/lang/String;Lʼʻ/ʿᵢ;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse text attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lʻᴵ/ﾞᴵ;->ˈ(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static ﾞᴵ(Lᐧˎ/ﹳᐧ;)Lˆʻ/ﹳٴ;
    .locals 5

    .prologue
    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v0

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    const v2, 0x64617461

    const-string v3, "MetadataUtil"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    sget-object v2, Lʻˆ/ᵔᵢ;->ﹳٴ:[B

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const-string v2, "image/jpeg"

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    const-string v2, "image/png"

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_2

    const-string p0, "Unrecognized cover art flags: "

    invoke-static {v1, p0, v3}, Lˉˆ/ٴᴵ;->יـ(ILjava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    add-int/lit8 v0, v0, -0x10

    new-array v1, v0, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    new-instance p0, Lˆʻ/ﹳٴ;

    const/4 v0, 0x3

    invoke-direct {p0, v2, v4, v0, v1}, Lˆʻ/ﹳٴ;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    :cond_3
    const-string p0, "Failed to parse cover art attribute"

    invoke-static {v3, p0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
