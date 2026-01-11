.class public final Lcom/google/android/gms/internal/measurement/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/google/android/gms/internal/measurement/ᵔʾ;


# instance fields
.field public final ʾˋ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StringValue cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʼᐧ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/ʼᐧ;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˆʾ()Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final ᵎﹶ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    return-object v0
.end method

.method public final ᵔᵢ(Ljava/lang/String;Lˏˆ/ﹳٴ;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 27

    .prologue
    move-object/from16 v1, p1

    const-string v4, "charAt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "trim"

    const-string v7, "concat"

    const-string v8, "toLocaleUpperCase"

    const-string v9, "toString"

    const-string v10, "toLocaleLowerCase"

    const-string v11, "toLowerCase"

    const-string v12, "substring"

    const-string v13, "split"

    const-string v14, "slice"

    const-string v15, "search"

    move/from16 v16, v5

    const-string v5, "replace"

    move-object/from16 v17, v4

    const-string v4, "match"

    const-string v2, "lastIndexOf"

    const-string v3, "indexOf"

    const-string v0, "hasOwnProperty"

    move-object/from16 v18, v6

    const-string v6, "toUpperCase"

    if-nez v16, :cond_1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    move-object/from16 v16, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, " is not a String function"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object/from16 v16, v0

    move-object/from16 v0, v18

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v18

    const-string v19, "undefined"

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const-wide/16 v22, 0x0

    move-object/from16 v10, p0

    iget-object v9, v10, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    move-object/from16 v25, v7

    const/4 v7, 0x0

    sparse-switch v18, :sswitch_data_0

    goto/16 :goto_14

    :sswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move-object/from16 v11, p3

    const/4 v0, 0x2

    invoke-static {v3, v0, v11}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    move-object/from16 v3, p2

    :goto_1
    move-object/from16 v0, v19

    goto :goto_2

    :cond_2
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-object/from16 v3, p2

    iget-object v1, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    move-wide/from16 v1, v22

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v2, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_3
    invoke-static {v1, v2}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v1

    double-to-int v1, v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v2

    :sswitch_1
    move-object/from16 v3, p2

    move-object/from16 v11, p3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    invoke-static {v5, v0, v11}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    if-nez v0, :cond_4

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v2, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1c

    instance-of v4, v1, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    if-eqz v4, :cond_5

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    new-instance v4, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    int-to-double v5, v2

    new-instance v8, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/ᵔʾ;

    aput-object v4, v5, v7

    const/16 v26, 0x1

    aput-object v8, v5, v26

    const/16 v24, 0x2

    aput-object v10, v5, v24

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʽ(Lˏˆ/ﹳٴ;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    :cond_5
    new-instance v3, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-virtual {v9, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/2addr v2, v5

    add-int/2addr v2, v6

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v3

    :sswitch_2
    move-object/from16 v3, p2

    move-object/from16 v11, p3

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    invoke-static {v12, v0, v11}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_4

    :cond_6
    move v0, v7

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v2, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_5

    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    :goto_5
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v9, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v2

    :sswitch_3
    move-object/from16 v3, p2

    move-object/from16 v11, p3

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    invoke-static {v13, v0, v11}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˈ;

    const/4 v2, 0x1

    new-array v1, v2, [Lcom/google/android/gms/internal/measurement/ᵔʾ;

    aput-object v10, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v2, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_a

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v4, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lˉᵎ/ⁱˊ;->ˈⁱ(D)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    goto :goto_6

    :cond_a
    const-wide/32 v2, 0x7fffffff

    :goto_6
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>()V

    return-object v0

    :cond_b
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    long-to-int v5, v2

    const/16 v26, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    if-lez v5, :cond_c

    aget-object v1, v4, v7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    add-int/lit8 v1, v5, -0x1

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    move v1, v5

    :cond_d
    int-to-long v5, v5

    cmp-long v2, v5, v2

    if-lez v2, :cond_e

    add-int/lit8 v1, v1, -0x1

    :cond_e
    :goto_7
    if-ge v7, v1, :cond_f

    new-instance v2, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    aget-object v3, v4, v7

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    new-instance v1, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>(Ljava/util/List;)V

    return-object v1

    :sswitch_4
    move-object/from16 v3, p2

    move-object/from16 v11, p3

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    invoke-static {v14, v0, v11}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_9

    :cond_10
    move-wide/from16 v0, v22

    :goto_9
    invoke-static {v0, v1}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v0

    cmpg-double v2, v0, v22

    if-gez v2, :cond_11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v4, v2

    add-double/2addr v4, v0

    move-wide/from16 v0, v22

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_a

    :cond_11
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    :goto_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_12

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_b

    :cond_12
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    :goto_b
    invoke-static {v0, v1}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_13

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    int-to-double v11, v6

    add-double/2addr v11, v0

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_c

    :cond_13
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_c
    double-to-int v2, v4

    double-to-int v0, v0

    sub-int/2addr v0, v2

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v2

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-virtual {v9, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v1

    :sswitch_5
    move-object/from16 v3, p2

    move-object/from16 v11, p3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    invoke-static {v4, v2, v11}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_14

    const-string v0, ""

    goto :goto_d

    :cond_14
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Lcom/google/android/gms/internal/measurement/ˈ;

    new-instance v2, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v0, v4, [Lcom/google/android/gms/internal/measurement/ᵔʾ;

    aput-object v2, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_15
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ﾞʻ;

    return-object v0

    :sswitch_6
    move-object/from16 v11, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {v7, v6, v11}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_7
    move-object/from16 v11, p3

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {v7, v6, v11}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_8
    move-object/from16 v3, p2

    move-object/from16 v11, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    invoke-static {v2, v0, v11}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_16

    :goto_e
    move-object/from16 v0, v19

    goto :goto_f

    :cond_16
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v19

    goto :goto_e

    :goto_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_17

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    goto :goto_10

    :cond_17
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v2, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_10
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_18

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_11

    :cond_18
    invoke-static {v1, v2}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v1

    :goto_11
    double-to-int v1, v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v2

    :sswitch_9
    move-object/from16 v11, p3

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {v7, v8, v11}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_a
    move-object/from16 v3, p2

    move-object/from16 v11, p3

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    invoke-static {v15, v2, v11}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v19

    :cond_19
    invoke-static/range {v19 .. v19}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v1

    :cond_1a
    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v0

    :sswitch_b
    move-object/from16 v0, p3

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {v7, v11, v0}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_c
    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_1b

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v4, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1c
    return-object v10

    :sswitch_d
    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v4, 0x1

    invoke-static {v2, v4, v0}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v0

    double-to-int v7, v0

    :cond_1d
    if-ltz v7, :cond_1f

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v7, v0, :cond_1e

    goto :goto_13

    :cond_1e
    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1f
    :goto_13
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵔᵢ:Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    return-object v0

    :sswitch_e
    move-object/from16 v0, p3

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {v7, v2, v0}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_f
    move-object/from16 v0, p3

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {v7, v2, v0}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    return-object v10

    :sswitch_10
    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v4, 0x1

    invoke-static {v4, v2, v0}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ˑﹳ;

    if-eqz v1, :cond_20

    return-object v2

    :cond_20
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpl-double v3, v0, v3

    if-nez v3, :cond_21

    double-to-int v0, v0

    if-ltz v0, :cond_21

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    return-object v2

    :cond_21
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ:Lcom/google/android/gms/internal/measurement/ˑﹳ;

    return-object v0

    :cond_22
    :goto_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6aaca37f -> :sswitch_10
        -0x69e9ad94 -> :sswitch_f
        -0x57513364 -> :sswitch_e
        -0x5128e1d7 -> :sswitch_d
        -0x50c088ec -> :sswitch_c
        -0x43ce226a -> :sswitch_b
        -0x36059a58 -> :sswitch_a
        -0x2b53be43 -> :sswitch_9
        -0x1bdda92d -> :sswitch_8
        -0x17d0ad49 -> :sswitch_7
        0x367422 -> :sswitch_6
        0x62dd9c5 -> :sswitch_5
        0x6873d92 -> :sswitch_4
        0x6891b1a -> :sswitch_3
        0x1f9f6e51 -> :sswitch_2
        0x413cb2b4 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ⁱˊ()Ljava/lang/Double;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final ﾞᴵ()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʼᐧ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/ʼᐧ;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method
