.class public abstract Lˎᵔ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:Lˎᵔ/ˑﹳ;

.field public static final ˆʾ:Lˎᵔ/ˑﹳ;

.field public static final ˉʿ:Lˎᵔ/ˑﹳ;

.field public static final ˑﹳ:Ljava/util/HashMap;

.field public static final ٴﹶ:Lˎᵔ/ˑﹳ;

.field public static final ᵎﹶ:Lˎᵔ/ˑﹳ;

.field public static final ᵔᵢ:Lˎᵔ/ˑﹳ;

.field public static final ﾞʻ:Lˎᵔ/ˑﹳ;

.field public static final ﾞᴵ:Lˎᵔ/ˑﹳ;


# instance fields
.field public final ʽ:Ljava/util/Set;

.field public final ˈ:Lˎᵔ/ﹳٴ;

.field public final ⁱˊ:I

.field public final ﹳٴ:Lˎᵔ/ᵎﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lˎᵔ/ﾞᴵ;->ˑﹳ:Ljava/util/HashMap;

    new-instance v1, Lˎᵔ/ˑﹳ;

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Lˎᵔ/ﹳٴ;->ᴵˊ:Lˎᵔ/ﹳٴ;

    invoke-direct {v1, v3, v4, v2}, Lˎᵔ/ˑﹳ;-><init>(ILˎᵔ/ﹳٴ;I)V

    sput-object v1, Lˎᵔ/ﾞᴵ;->ﾞᴵ:Lˎᵔ/ˑﹳ;

    new-instance v2, Lˎᵔ/ˑﹳ;

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v2, v6, v4, v5}, Lˎᵔ/ˑﹳ;-><init>(ILˎᵔ/ﹳٴ;I)V

    sput-object v2, Lˎᵔ/ﾞᴵ;->ᵎﹶ:Lˎᵔ/ˑﹳ;

    new-instance v5, Lˎᵔ/ˑﹳ;

    sget-object v7, Lˎᵔ/ﹳٴ;->ʽʽ:Lˎᵔ/ﹳٴ;

    invoke-static {v4, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    sget-object v9, Lˎᵔ/ᵎﹶ;->ᴵˊ:Lˎᵔ/ᵎﹶ;

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v4, v8}, Lˎᵔ/ˑﹳ;-><init>(Lˎᵔ/ᵎﹶ;ILˎᵔ/ﹳٴ;Ljava/util/Set;)V

    new-instance v8, Lˎᵔ/ˑﹳ;

    invoke-static {v4, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v8, v9, v12, v11}, Lˎᵔ/ˑﹳ;-><init>(Lˎᵔ/ᵎﹶ;ILjava/util/EnumSet;)V

    sput-object v8, Lˎᵔ/ﾞᴵ;->ᵔᵢ:Lˎᵔ/ˑﹳ;

    new-instance v9, Lˎᵔ/ˑﹳ;

    const/4 v11, 0x4

    const/4 v13, 0x5

    invoke-direct {v9, v13, v4, v11}, Lˎᵔ/ˑﹳ;-><init>(ILˎᵔ/ﹳٴ;I)V

    sput-object v9, Lˎᵔ/ﾞᴵ;->ʼˎ:Lˎᵔ/ˑﹳ;

    new-instance v11, Lˎᵔ/ˑﹳ;

    const/4 v14, 0x5

    const/4 v15, 0x6

    invoke-direct {v11, v15, v4, v14}, Lˎᵔ/ˑﹳ;-><init>(ILˎᵔ/ﹳٴ;I)V

    sput-object v11, Lˎᵔ/ﾞᴵ;->ˆʾ:Lˎᵔ/ˑﹳ;

    new-instance v14, Lˎᵔ/ˑﹳ;

    move/from16 v16, v3

    const/4 v3, 0x6

    move/from16 v17, v6

    const/16 v6, 0xa

    invoke-direct {v14, v6, v4, v3}, Lˎᵔ/ˑﹳ;-><init>(ILˎᵔ/ﹳٴ;I)V

    sput-object v14, Lˎᵔ/ﾞᴵ;->ٴﹶ:Lˎᵔ/ˑﹳ;

    new-instance v3, Lˎᵔ/ˑﹳ;

    const/4 v4, 0x7

    move/from16 v18, v6

    const/16 v6, 0x11

    invoke-direct {v3, v6, v7, v4}, Lˎᵔ/ˑﹳ;-><init>(ILˎᵔ/ﹳٴ;I)V

    sput-object v3, Lˎᵔ/ﾞᴵ;->ﾞʻ:Lˎᵔ/ˑﹳ;

    new-instance v4, Lˎᵔ/ˑﹳ;

    move/from16 v19, v6

    const/16 v6, 0x8

    move/from16 v20, v10

    const/16 v10, 0x10

    invoke-direct {v4, v10, v7, v6}, Lˎᵔ/ˑﹳ;-><init>(ILˎᵔ/ﹳٴ;I)V

    sput-object v4, Lˎᵔ/ﾞᴵ;->ˉʿ:Lˎᵔ/ˑﹳ;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˎᵔ/ᵎﹶ;ILjava/util/EnumSet;)V
    .locals 2

    .prologue
    sget-object v0, Lˎᵔ/ﹳٴ;->ᴵˊ:Lˎᵔ/ﹳٴ;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lˎᵔ/ﹳٴ;->ʽʽ:Lˎᵔ/ﹳٴ;

    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Lˎᵔ/ﾞᴵ;-><init>(Lˎᵔ/ᵎﹶ;ILˎᵔ/ﹳٴ;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lˎᵔ/ᵎﹶ;ILˎᵔ/ﹳٴ;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎᵔ/ﾞᴵ;->ﹳٴ:Lˎᵔ/ᵎﹶ;

    iput p2, p0, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    iput-object p4, p0, Lˎᵔ/ﾞᴵ;->ʽ:Ljava/util/Set;

    iput-object p3, p0, Lˎᵔ/ﾞᴵ;->ˈ:Lˎᵔ/ﹳٴ;

    return-void
.end method

.method public static ⁱˊ(Lˎᵔ/ᵎﹶ;I)Lˎᵔ/ﾞᴵ;
    .locals 7

    .prologue
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, Lˎᵔ/ﾞᴵ;->ˑﹳ:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_3

    :cond_0
    new-instance v0, Lˎᵔ/ˈ;

    sget-object v1, Lˎᵔ/ﹳٴ;->ᴵˊ:Lˎᵔ/ﹳٴ;

    sget-object v2, Lˎᵔ/ﹳٴ;->ʽʽ:Lˎᵔ/ﹳٴ;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lˎᵔ/ﾞᴵ;-><init>(Lˎᵔ/ᵎﹶ;ILjava/util/EnumSet;)V

    return-object v0

    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˎᵔ/ﾞᴵ;

    iget v6, v5, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    if-ne v6, p1, :cond_2

    iget-object v6, v5, Lˎᵔ/ﾞᴵ;->ﹳٴ:Lˎᵔ/ᵎﹶ;

    if-ne p0, v6, :cond_2

    return-object v5

    :cond_3
    new-instance v0, Lcom/hierynomus/asn1/ASN1ParseException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v1, v5

    aput-object p1, v1, v3

    aput-object v4, v1, v2

    const-string p0, "Unknown ASN.1 tag \'%s:%s\' found (%s)"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lˎᵔ/ﾞᴵ;

    iget v2, p0, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    iget v3, p1, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lˎᵔ/ﾞᴵ;->ﹳٴ:Lˎᵔ/ᵎﹶ;

    iget-object v3, p1, Lˎᵔ/ﾞᴵ;->ﹳٴ:Lˎᵔ/ᵎﹶ;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lˎᵔ/ﾞᴵ;->ˈ:Lˎᵔ/ﹳٴ;

    iget-object p1, p1, Lˎᵔ/ﾞᴵ;->ˈ:Lˎᵔ/ﹳٴ;

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lˎᵔ/ﾞᴵ;->ﹳٴ:Lˎᵔ/ᵎﹶ;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    iget-object v2, p0, Lˎᵔ/ﾞᴵ;->ˈ:Lˎᵔ/ﹳٴ;

    aput-object v2, v1, v0

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ASN1Tag["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˎᵔ/ﾞᴵ;->ﹳٴ:Lˎᵔ/ᵎﹶ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lˎᵔ/ﾞᴵ;->ˈ:Lˎᵔ/ﹳٴ;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->יـ(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract ʽ(Lﹳˋ/ʼˎ;)Lʽⁱ/ᵎﹶ;
.end method

.method public abstract ˈ(Lᵔﹶ/ˊʻ;)Lʽⁱ/ᵎﹶ;
.end method

.method public final ﹳٴ(Lˎᵔ/ﹳٴ;)Lˎᵔ/ﾞᴵ;
    .locals 7

    .prologue
    iget-object v0, p0, Lˎᵔ/ﾞᴵ;->ˈ:Lˎᵔ/ﹳٴ;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lˎᵔ/ﾞᴵ;->ʽ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lˎᵔ/ʽ;

    iget v4, p0, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    iget-object v6, p0, Lˎᵔ/ﾞᴵ;->ʽ:Ljava/util/Set;

    iget-object v3, p0, Lˎᵔ/ﾞᴵ;->ﹳٴ:Lˎᵔ/ᵎﹶ;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lˎᵔ/ʽ;-><init>(Lˎᵔ/ﾞᴵ;Lˎᵔ/ᵎﹶ;ILˎᵔ/ﹳٴ;Ljava/util/Set;)V

    return-object v1

    :cond_1
    move-object v2, p0

    move-object v5, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    const-string v1, "The ASN.1 tag %s does not support encoding as %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
