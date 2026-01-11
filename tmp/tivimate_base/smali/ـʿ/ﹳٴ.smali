.class public final Lـʿ/ﹳٴ;
.super Lⁱᵢ/ﹳٴ;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final ٴʼ:Ljava/util/EnumSet;

.field public static final ᵎⁱ:Ljava/util/EnumSet;


# instance fields
.field public final ˉٴ:I

.field public final ˊʻ:Lʼﹳ/ᵔᵢ;

.field public final ٴᵢ:I

.field public final ᴵᵔ:Lʿʼ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lٴˎ/ﹳٴ;->ᴵˊ:Lٴˎ/ﹳٴ;

    sget-object v1, Lٴˎ/ﹳٴ;->ʽʽ:Lٴˎ/ﹳٴ;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    sput-object v2, Lـʿ/ﹳٴ;->ᵎⁱ:Ljava/util/EnumSet;

    sget-object v2, Lٴˎ/ﹳٴ;->ˈٴ:Lٴˎ/ﹳٴ;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lـʿ/ﹳٴ;->ٴʼ:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lיˆ/ʽ;Lʿʼ/ʼˎ;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lⁱᵢ/ﹳٴ;-><init>(Lיˆ/ʽ;)V

    iput-object v2, v0, Lـʿ/ﹳٴ;->ᴵᵔ:Lʿʼ/ʼˎ;

    new-instance v3, Lˊʾ/ˈ;

    iget-object v14, v1, Lיˆ/ʽ;->ˈٴ:Lٴٴ/ⁱˊ;

    iget-object v4, v14, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v4, v4, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v4, Lʽᴵ/יـ;

    iget-object v4, v4, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v4, Lʼﹳ/ʽ;

    iget-wide v5, v1, Lיˆ/ʽ;->ʾˋ:J

    iget-object v1, v2, Lʿʼ/ﾞʻ;->ᴵˊ:Lʾⁱ/ˈ;

    iget-wide v7, v1, Lʾⁱ/ˈ;->ᴵˊ:J

    sget-object v1, Lﾞʾ/ﹳٴ;->ˊʻ:Lﾞʾ/ﹳٴ;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v9, Lʼﹳ/ᵔﹳ;->ᴵˊ:Lʼﹳ/ᵔﹳ;

    sget-object v10, Lʼﹳ/ᵔﹳ;->ʽʽ:Lʼﹳ/ᵔﹳ;

    invoke-static {v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v10

    new-instance v13, Lˎᴵ/ﹳٴ;

    iget-object v2, v2, Lʿʼ/ﾞʻ;->ʾˋ:Lˎᴵ/ﹳٴ;

    move-object/from16 v9, p3

    invoke-direct {v13, v2, v9}, Lˎᴵ/ﹳٴ;-><init>(Lˎᴵ/ﹳٴ;Ljava/lang/String;)V

    move-object v2, v4

    move-wide v15, v7

    move-object v8, v1

    move-object v1, v3

    move-wide v3, v5

    move-wide v5, v15

    const/4 v7, 0x3

    const/4 v9, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v13}, Lˊʾ/ˈ;-><init>(Lʼﹳ/ʽ;JJILjava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;Lˎᴵ/ﹳٴ;)V

    sget-object v2, Lٴˎ/ﹳٴ;->ᴵˊ:Lٴˎ/ﹳٴ;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lⁱᵢ/ﹳٴ;->ʽ(Lʼﹳ/ˉˆ;Ljava/util/EnumSet;)Lʼﹳ/ˉˆ;

    move-result-object v1

    check-cast v1, Lˊʾ/ˑﹳ;

    iget-object v1, v1, Lˊʾ/ˑﹳ;->ٴᵢ:Lʼﹳ/ᵔᵢ;

    iput-object v1, v0, Lـʿ/ﹳٴ;->ˊʻ:Lʼﹳ/ᵔᵢ;

    iget-object v1, v14, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    iget v2, v1, Lˎﹳ/ⁱˊ;->ﾞʻ:I

    iget-object v3, v14, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v3, v3, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v3, Lʽᴵ/יـ;

    iget v3, v3, Lʽᴵ/יـ;->ⁱˊ:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lـʿ/ﹳٴ;->ٴᵢ:I

    iget v2, v1, Lˎﹳ/ⁱˊ;->ᵔᵢ:I

    iget-object v3, v14, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v3, v3, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v3, Lʽᴵ/יـ;

    iget v3, v3, Lʽᴵ/יـ;->ʽ:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lـʿ/ﹳٴ;->ˉٴ:I

    iget v1, v1, Lˎﹳ/ⁱˊ;->ˆʾ:I

    iget-object v2, v14, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v2, v2, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v2, Lʽᴵ/יـ;

    iget v2, v2, Lʽᴵ/יـ;->ˈ:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 10

    new-instance v0, Lˊʾ/ʽ;

    iget-object v9, p0, Lـʿ/ﹳٴ;->ᴵᵔ:Lʿʼ/ʼˎ;

    iget-object v2, v9, Lʿʼ/ﾞʻ;->ᴵᵔ:Lʼﹳ/ʽ;

    iget-wide v4, v9, Lʿʼ/ﾞʻ;->ᵔי:J

    iget-wide v6, v9, Lʿʼ/ﾞʻ;->ʽʽ:J

    sget-object v3, Lʼﹳ/ﾞʻ;->ˉٴ:Lʼﹳ/ﾞʻ;

    const/4 v8, 0x0

    const/16 v1, 0x18

    invoke-direct/range {v0 .. v8}, Lˊʾ/ʽ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJI)V

    iget-object v3, p0, Lـʿ/ﹳٴ;->ˊʻ:Lʼﹳ/ᵔᵢ;

    iput-object v3, v0, Lˊʾ/ʽ;->ٴᵢ:Ljava/lang/Object;

    sget-object v4, Lʿʼ/ﾞʻ;->ˈʿ:Lᵎˉ/ⁱˊ;

    iget-wide v5, v9, Lʿʼ/ﾞʻ;->ᵎˊ:J

    const-string v2, "Close"

    move-object v1, v0

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lʿʼ/ﾞʻ;->ᵎﹶ(Lʼﹳ/ˉˆ;Ljava/lang/String;Ljava/lang/Object;Lʿʼ/ˉʿ;J)Lʼﹳ/ˉˆ;

    return-void
.end method

.method public final ᵎﹶ()[B
    .locals 12

    .prologue
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :cond_0
    new-instance v2, Lˊʾ/ʼᐧ;

    iget-object v1, p0, Lـʿ/ﹳٴ;->ᴵᵔ:Lʿʼ/ʼˎ;

    iget-object v1, v1, Lʿʼ/ﾞʻ;->ᴵˊ:Lʾⁱ/ˈ;

    iget-wide v7, v1, Lʾⁱ/ˈ;->ᴵˊ:J

    const-wide/16 v9, 0x0

    iget v11, p0, Lـʿ/ﹳٴ;->ˉٴ:I

    iget-object v3, p0, Lⁱᵢ/ﹳٴ;->ʾˋ:Lʼﹳ/ʽ;

    iget-object v4, p0, Lـʿ/ﹳٴ;->ˊʻ:Lʼﹳ/ᵔᵢ;

    iget-wide v5, p0, Lⁱᵢ/ﹳٴ;->ʽʽ:J

    invoke-direct/range {v2 .. v11}, Lˊʾ/ʼᐧ;-><init>(Lʼﹳ/ʽ;Lʼﹳ/ᵔᵢ;JJJI)V

    sget-object v1, Lـʿ/ﹳٴ;->ٴʼ:Ljava/util/EnumSet;

    invoke-virtual {p0, v2, v1}, Lⁱᵢ/ﹳٴ;->ʽ(Lʼﹳ/ˉˆ;Ljava/util/EnumSet;)Lʼﹳ/ˉˆ;

    move-result-object v1

    check-cast v1, Lˊʾ/ᵔﹳ;

    iget-object v2, v1, Lˊʾ/ᵔﹳ;->ٴᵢ:[B

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˋʼ/ⁱˊ;

    check-cast v1, Lʼﹳ/ٴﹶ;

    iget-wide v1, v1, Lʼﹳ/ٴﹶ;->ˆʾ:J

    invoke-static {v1, v2}, Lٴˎ/ﹳٴ;->ⁱˊ(J)Lٴˎ/ﹳٴ;

    move-result-object v1

    sget-object v2, Lٴˎ/ﹳٴ;->ʽʽ:Lٴˎ/ﹳٴ;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
