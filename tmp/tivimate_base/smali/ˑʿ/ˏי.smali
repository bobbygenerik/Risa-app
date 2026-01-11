.class public final synthetic Lˑʿ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˑʿ/ʽﹳ;
.implements Lˆʽ/ˑﹳ;
.implements Lﹳᐧ/ﹳٴ;
.implements Lﹳʽ/ʾˋ;
.implements Lﹳʽ/ـˆ;
.implements Lﹳʽ/ʽﹳ;
.implements Lﹳʽ/ﾞᴵ;
.implements Lﹳʽ/ˈ;
.implements Lʾﹳ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˑʿ/ˏי;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Lˑʿ/ˏי;->ʾˋ:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑᵎ/ᵔﹳ;

    iget-object v5, v4, Lˑᵎ/ᵔﹳ;->ᵔﹳ:Ljava/util/List;

    iget-object v8, v4, Lˑᵎ/ᵔﹳ;->ⁱˊ:Lᴵˋ/ˈٴ;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᴵˋ/ᵔᵢ;

    :goto_1
    move-object v11, v5

    goto :goto_2

    :cond_0
    sget-object v5, Lᴵˋ/ᵔᵢ;->ⁱˊ:Lᴵˋ/ᵔᵢ;

    goto :goto_1

    :goto_2
    new-instance v6, Lᴵˋ/ᴵᵔ;

    iget-object v5, v4, Lˑᵎ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    new-instance v9, Ljava/util/HashSet;

    iget-object v10, v4, Lˑᵎ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v10, v4, Lˑᵎ/ᵔﹳ;->ʽ:Lᴵˋ/ᵔᵢ;

    iget v12, v4, Lˑᵎ/ᵔﹳ;->ᵔᵢ:I

    iget v13, v4, Lˑᵎ/ᵔﹳ;->ˉʿ:I

    iget-object v14, v4, Lˑᵎ/ᵔﹳ;->ᵎﹶ:Lᴵˋ/ˑﹳ;

    move-object/from16 v29, v3

    iget-wide v2, v4, Lˑᵎ/ᵔﹳ;->ˈ:J

    move-object/from16 v30, v8

    iget-wide v7, v4, Lˑᵎ/ᵔﹳ;->ˑﹳ:J

    const-wide/16 v16, 0x0

    cmp-long v16, v7, v16

    if-eqz v16, :cond_1

    new-instance v15, Lᴵˋ/ʽʽ;

    move-object/from16 v31, v1

    iget-wide v0, v4, Lˑᵎ/ᵔﹳ;->ﾞᴵ:J

    invoke-direct {v15, v7, v8, v0, v1}, Lᴵˋ/ʽʽ;-><init>(JJ)V

    move-object v0, v15

    goto :goto_3

    :cond_1
    move-object/from16 v31, v1

    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lᴵˋ/ˈٴ;->ʾˋ:Lᴵˋ/ˈٴ;

    move-object/from16 v15, v30

    if-ne v15, v1, :cond_4

    sget-object v18, Lˑᵎ/ﹳᐧ;->ᵢˏ:Ljava/lang/String;

    const/16 v18, 0x1

    if-ne v15, v1, :cond_2

    if-lez v12, :cond_2

    move v1, v13

    move v13, v12

    move/from16 v12, v18

    :goto_4
    move-object/from16 v19, v14

    goto :goto_5

    :cond_2
    move v1, v13

    move v13, v12

    const/4 v12, 0x0

    goto :goto_4

    :goto_5
    iget v14, v4, Lˑᵎ/ᵔﹳ;->ʼˎ:I

    move-object/from16 v30, v0

    move/from16 v20, v1

    iget-wide v0, v4, Lˑᵎ/ᵔﹳ;->ˆʾ:J

    move-wide/from16 v21, v0

    iget-wide v0, v4, Lˑᵎ/ᵔﹳ;->ٴﹶ:J

    move-wide/from16 v23, v0

    iget v0, v4, Lˑᵎ/ᵔﹳ;->ﾞʻ:I

    if-eqz v16, :cond_3

    move/from16 v17, v18

    :goto_6
    move/from16 v16, v0

    goto :goto_7

    :cond_3
    const/16 v17, 0x0

    goto :goto_6

    :goto_7
    iget-wide v0, v4, Lˑᵎ/ᵔﹳ;->ﾞᴵ:J

    move-wide/from16 v25, v0

    iget-wide v0, v4, Lˑᵎ/ᵔﹳ;->ᵔʾ:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v19, v16

    move/from16 v20, v17

    move-wide/from16 v17, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v7

    move-object v8, v15

    move-wide/from16 v15, v21

    move-wide/from16 v21, v2

    invoke-static/range {v12 .. v28}, Lˈˋ/ʾˊ;->ˑﹳ(ZIIJJIZJJJJ)J

    move-result-wide v2

    move-wide/from16 v15, v21

    :goto_8
    move-wide/from16 v18, v2

    goto :goto_9

    :cond_4
    move-object/from16 v30, v0

    move v1, v13

    move-object v0, v14

    move-object v8, v15

    move-wide v15, v2

    move v13, v12

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_8

    :goto_9
    iget v2, v4, Lˑᵎ/ᵔﹳ;->ˉˆ:I

    move-object v14, v0

    move/from16 v20, v2

    move-object v7, v5

    move v12, v13

    move-object/from16 v17, v30

    move v13, v1

    invoke-direct/range {v6 .. v20}, Lᴵˋ/ᴵᵔ;-><init>(Ljava/util/UUID;Lᴵˋ/ˈٴ;Ljava/util/HashSet;Lᴵˋ/ᵔᵢ;Lᴵˋ/ᵔᵢ;IILᴵˋ/ˑﹳ;JLᴵˋ/ʽʽ;JI)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    move-object/from16 v1, v31

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    move-object v2, v0

    goto :goto_a

    :cond_6
    const/4 v2, 0x0

    :goto_a
    return-object v2

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lᵢˋ/ᵔᵢ;

    iget v0, v0, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ʽ(Lﹳʽ/ˊʻ;)Lٴʻ/ʼˎ;
    .locals 3

    .prologue
    iget v0, p0, Lˑʿ/ˏי;->ʾˋ:I

    sparse-switch v0, :sswitch_data_0

    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ˏי;->ᴵᵔ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ˏי;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lיʻ/ᵔʾ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ˏי;->ᴵˊ()I

    move-result v2

    invoke-virtual {v1, v2}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v0}, Lᴵﹳ/ˏי;->ʽʽ()Lᴵﹳ/ʻٴ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ʻٴ;->ᴵˊ()I

    move-result v0

    invoke-virtual {v1, v0}, Lˏˆ/ﹳٴ;->ᵔٴ(I)V

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ˊˋ()V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object p1

    invoke-static {p1}, Lיٴ/ⁱˊ;->ʽ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object p1

    iput-object p1, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ﾞʻ()Lיʻ/ᵔʾ;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesEaxParameters failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to AesEaxProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ˆʾ;->ᴵᵔ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ˆʾ;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0}, Lᴵﹳ/ˆʾ;->ʽʽ()Lᴵﹳ/ʼˈ;

    move-result-object v1

    invoke-virtual {v1}, Lᴵﹳ/ʼˈ;->ᴵᵔ()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lיʻ/ٴﹶ;->ⁱˊ()Lﹳʽ/ᴵᵔ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ˆʾ;->ᴵˊ()Lᴵﹳ/ᵔʾ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ᵔʾ;->ʽʽ()I

    move-result v2

    invoke-virtual {v1, v2}, Lﹳʽ/ᴵᵔ;->ʼᐧ(I)V

    invoke-virtual {v0}, Lᴵﹳ/ˆʾ;->ʽʽ()Lᴵﹳ/ʼˈ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ʼˈ;->ʽʽ()I

    move-result v2

    invoke-virtual {v1, v2}, Lﹳʽ/ᴵᵔ;->ᵔﹳ(I)V

    invoke-virtual {v0}, Lᴵﹳ/ˆʾ;->ᴵˊ()Lᴵﹳ/ᵔʾ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ᵔʾ;->ˈٴ()Lᴵﹳ/ʼᐧ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ʼᐧ;->ᴵˊ()I

    move-result v2

    invoke-virtual {v1, v2}, Lﹳʽ/ᴵᵔ;->ﹳᐧ(I)V

    invoke-virtual {v0}, Lᴵﹳ/ˆʾ;->ʽʽ()Lᴵﹳ/ʼˈ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ʼˈ;->ˈٴ()Lᴵﹳ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ﹳـ;->ˈٴ()I

    move-result v2

    invoke-virtual {v1, v2}, Lﹳʽ/ᴵᵔ;->ˏי(I)V

    invoke-virtual {v0}, Lᴵﹳ/ˆʾ;->ʽʽ()Lᴵﹳ/ʼˈ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ʼˈ;->ˈٴ()Lᴵﹳ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ﹳـ;->ʽʽ()Lᴵﹳ/ˈʿ;

    move-result-object v0

    invoke-static {v0}, Lיٴ/ﹳٴ;->ⁱˊ(Lᴵﹳ/ˈʿ;)Lיʻ/ˆʾ;

    move-result-object v0

    iput-object v0, v1, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object p1

    invoke-static {p1}, Lיٴ/ﹳٴ;->ˈ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object p1

    iput-object p1, v1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v1}, Lﹳʽ/ᴵᵔ;->ˑﹳ()Lיʻ/ٴﹶ;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesCtrHmacAeadParameters failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ᐧﹶ;->ˊʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ᐧﹶ;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object p1

    invoke-static {v0, p1}, Lיʻ/ˊʻ;->ﹳٴ(Lᴵﹳ/ᐧﹶ;Lᴵﹳ/י;)Lיʻ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ٴﹳ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ٴﹳ;

    move-result-object v0
    :try_end_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual {v0}, Lᴵﹳ/ٴﹳ;->ᴵˊ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object p1

    invoke-static {p1}, Lיʻ/ʽʽ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object p1

    new-instance v1, Lיʻ/ᴵˊ;

    invoke-direct {v1, v0, p1}, Lיʻ/ᴵˊ;-><init>(Ljava/lang/String;Lיʻ/ˆʾ;)V

    return-object v1

    :catch_3
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsAeadKeyFormat failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_2
        0x10 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˆʾ(Lʾﹳ/ⁱˊ;)V
    .locals 0

    invoke-interface {p1}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public ˑﹳ(Lˑʿ/יـ;Lˑʿ/ʻٴ;Z)V
    .locals 0

    invoke-interface {p1}, Lˑʿ/יـ;->ⁱˊ()V

    return-void
.end method

.method public ᵔᵢ(Lﹳˋ/ʽʽ;)Ljava/lang/Object;
    .locals 9

    .prologue
    iget v0, p0, Lˑʿ/ˏי;->ʾˋ:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x4

    const/16 v4, 0xc

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Lיʻ/ᵎˊ;

    sget-object v0, Lיٴ/ᵔᵢ;->ﾞᴵ:Lcom/parse/ˑ;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    new-instance v0, Lיʻ/ˑﹳ;

    iget-object v1, p1, Lיʻ/ᵎˊ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    iget-object p1, p1, Lיʻ/ᵎˊ;->ˊʻ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    invoke-direct {v0, v5, v1, p1}, Lיʻ/ˑﹳ;-><init>(I[B[B)V

    goto :goto_0

    :cond_0
    new-instance v0, Lיʻ/ˑﹳ;

    iget-object v1, p1, Lיʻ/ᵎˊ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    iget-object p1, p1, Lיʻ/ᵎˊ;->ˊʻ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, p1}, Lיʻ/ˑﹳ;-><init>(I[B[B)V

    :goto_0
    return-object v0

    :pswitch_1
    check-cast p1, Lיʻ/ˉٴ;

    iget-object v0, p1, Lיʻ/ˉٴ;->ˈٴ:Lיʻ/ٴʼ;

    iget v0, v0, Lיʻ/ٴʼ;->ⁱˊ:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    if-gt v0, v4, :cond_1

    new-instance v0, Lיٴ/ᵔʾ;

    iget-object v1, p1, Lיʻ/ˉٴ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    iget-object v2, p1, Lיʻ/ˉٴ;->ˊʻ:Lʾᐧ/ﹳٴ;

    iget-object p1, p1, Lיʻ/ˉٴ;->ˈٴ:Lיʻ/ٴʼ;

    iget p1, p1, Lיʻ/ٴʼ;->ⁱˊ:I

    invoke-direct {v0, v1, v2, p1}, Lיٴ/ᵔʾ;-><init>([BLʾᐧ/ﹳٴ;I)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid salt size"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    check-cast p1, Lיʻ/ˈٴ;

    iget-object v0, p1, Lיʻ/ˈٴ;->ˈٴ:Lיʻ/ᴵᵔ;

    iget-object v1, v0, Lיʻ/ᴵᵔ;->ⁱˊ:Ljava/lang/String;

    iget-object v0, v0, Lיʻ/ᴵᵔ;->ˈ:Lיʻ/ʽ;

    invoke-static {v1}, Lٴʻ/ᵎﹶ;->ﹳٴ(Ljava/lang/String;)Lˆـ/ʽ;

    move-result-object v2

    invoke-virtual {v2, v1}, Lˆـ/ʽ;->ⁱˊ(Ljava/lang/String;)Lˆـ/ⁱˊ;

    move-result-object v1

    sget-object v2, Lיʻ/ʼʼ;->ˈ:[B

    :try_start_0
    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->ʾᵎ(Lٴʻ/ʼˎ;)[B

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v2

    invoke-static {v0, v2}, Lᴵﹳ/ᵎᵔ;->ᵎⁱ([BLcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ᵎᵔ;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lיʻ/ʼʼ;

    invoke-direct {v2, v0, v1}, Lיʻ/ʼʼ;-><init>(Lᴵﹳ/ᵎᵔ;Lˆـ/ⁱˊ;)V

    iget-object p1, p1, Lיʻ/ˈٴ;->ᴵᵔ:Lʾᐧ/ﹳٴ;

    new-instance v0, Lיʻ/ˑﹳ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lיʻ/ˑﹳ;-><init>(Lٴʻ/ﹳٴ;[B)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_3
    check-cast p1, Lיʻ/ʾˋ;

    iget-object v0, p1, Lיʻ/ʾˋ;->ˈٴ:Lיʻ/ᴵˊ;

    iget-object v0, v0, Lיʻ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0}, Lٴʻ/ᵎﹶ;->ﹳٴ(Ljava/lang/String;)Lˆـ/ʽ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ʾˋ;->ˈٴ:Lיʻ/ᴵˊ;

    iget-object v1, v1, Lיʻ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lˆـ/ʽ;->ⁱˊ(Ljava/lang/String;)Lˆـ/ⁱˊ;

    move-result-object v0

    iget-object p1, p1, Lיʻ/ʾˋ;->ᴵᵔ:Lʾᐧ/ﹳٴ;

    new-instance v1, Lיʻ/ˑﹳ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lיʻ/ˑﹳ;-><init>(Lٴʻ/ﹳٴ;[B)V

    return-object v1

    :pswitch_4
    check-cast p1, Lיʻ/ʽﹳ;

    sget-object v0, Lיٴ/ᵔᵢ;->ﾞᴵ:Lcom/parse/ˑ;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lיٴ/ᵔᵢ;

    iget-object v1, p1, Lיʻ/ʽﹳ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    iget-object p1, p1, Lיʻ/ʽﹳ;->ˊʻ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lיٴ/ᵔᵢ;-><init>([B[B)V

    goto :goto_1

    :cond_2
    new-instance v0, Lיʻ/ˑﹳ;

    iget-object v1, p1, Lיʻ/ʽﹳ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    iget-object p1, p1, Lיʻ/ʽﹳ;->ˊʻ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    invoke-direct {v0, v3, v1, p1}, Lיʻ/ˑﹳ;-><init>(I[B[B)V

    :goto_1
    return-object v0

    :pswitch_5
    check-cast p1, Lיʻ/ﹳᐧ;

    sget-object v0, Lʾˉ/ﹳٴ;->ﹳٴ:Lcom/parse/ˑ;

    new-instance v0, Lʾˈ/ˏי;

    invoke-direct {v0, v5}, Lʾˈ/ˏי;-><init>(I)V

    sget-object v1, Lיٴ/ﾞᴵ;->ˈ:[B

    invoke-static {}, Lʾˈ/ˏי;->ʽ()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-static {v1}, Lיٴ/ﾞᴵ;->ʽ(Ljavax/crypto/Cipher;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lיٴ/ﾞᴵ;

    iget-object v2, p1, Lיʻ/ﹳᐧ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v2, v2, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʾᐧ/ﹳٴ;

    invoke-virtual {v2}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v2

    iget-object p1, p1, Lיʻ/ﹳᐧ;->ˊʻ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lיٴ/ﾞᴵ;-><init>([B[BLʾˈ/ˏי;)V

    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cipher does not implement AES GCM SIV."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    check-cast p1, Lיʻ/ˉˆ;

    iget-object v0, p1, Lיʻ/ˉˆ;->ˈٴ:Lיʻ/ᵔﹳ;

    iget v1, v0, Lיʻ/ᵔﹳ;->ⁱˊ:I

    iget v3, v0, Lיʻ/ᵔﹳ;->ʽ:I

    if-ne v1, v4, :cond_5

    if-ne v3, v2, :cond_4

    new-instance v0, Lיʻ/ˑﹳ;

    iget-object v1, p1, Lיʻ/ˉˆ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    iget-object p1, p1, Lיʻ/ˉˆ;->ˊʻ:Lʾᐧ/ﹳٴ;

    invoke-direct {v0, v1, p1}, Lיʻ/ˑﹳ;-><init>([BLʾᐧ/ﹳٴ;)V

    return-object v0

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected tag Size 16, got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected IV Size 12, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lיʻ/ᵔﹳ;->ⁱˊ:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_7
    check-cast p1, Lיʻ/ﾞʻ;

    sget-object v0, Lﹶˆ/ⁱˊ;->ˑﹳ:Lcom/parse/ˑ;

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lיʻ/ﾞʻ;->ˈٴ:Lיʻ/ᵔʾ;

    iget v1, v0, Lיʻ/ᵔʾ;->ʽ:I

    if-ne v1, v2, :cond_6

    new-instance v1, Lﹶˆ/ⁱˊ;

    iget-object v2, p1, Lיʻ/ﾞʻ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v2, v2, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʾᐧ/ﹳٴ;

    invoke-virtual {v2}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v2

    iget v0, v0, Lיʻ/ᵔʾ;->ⁱˊ:I

    iget-object p1, p1, Lיʻ/ﾞʻ;->ˊʻ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lﹶˆ/ⁱˊ;-><init>(I[B[B)V

    return-object v1

    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AesEaxJce only supports 16 byte tag size, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lיʻ/ᵔʾ;->ʽ:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-EAX in FIPS-mode."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_8
    check-cast p1, Lיʻ/ᵎﹶ;

    new-instance v0, Lﹶˆ/ﾞᴵ;

    new-instance v1, Lﹶˆ/ﹳٴ;

    iget-object v2, p1, Lיʻ/ᵎﹶ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v2, v2, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʾᐧ/ﹳٴ;

    invoke-virtual {v2}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v2

    iget-object v3, p1, Lיʻ/ᵎﹶ;->ˈٴ:Lיʻ/ٴﹶ;

    iget v4, v3, Lיʻ/ٴﹶ;->ʽ:I

    invoke-direct {v1, v4, v2}, Lﹶˆ/ﹳٴ;-><init>(I[B)V

    new-instance v2, Lﹶˆ/ᵔʾ;

    new-instance v4, Lﹶˆ/ˉʿ;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HMAC"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lיʻ/ٴﹶ;->ﾞᴵ:Lיʻ/ˆʾ;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v8, p1, Lיʻ/ᵎﹶ;->ˊʻ:Landroidx/leanback/widget/ˉˆ;

    iget-object v8, v8, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v8, Lʾᐧ/ﹳٴ;

    invoke-virtual {v8}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v5, v7}, Lﹶˆ/ˉʿ;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    iget v3, v3, Lיʻ/ٴﹶ;->ˈ:I

    invoke-direct {v2, v4, v3}, Lﹶˆ/ᵔʾ;-><init>(Lﹶˆ/ˉʿ;I)V

    iget-object p1, p1, Lיʻ/ᵎﹶ;->ٴᵢ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lﹶˆ/ﾞᴵ;-><init>(Lﹶˆ/ﹳٴ;Lﹶˆ/ᵔʾ;I[B)V

    return-object v0

    :pswitch_9
    check-cast p1, Lﹳʽ/ʼˎ;

    iget-object p1, p1, Lﹳʽ/ʼˎ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    invoke-static {p1}, Lﹳʽ/ʼˎ;->ˊʻ(Lﹳʽ/ᴵᵔ;)V

    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Lﹳʽ/ⁱˊ;->ˈ:Lﹳʽ/ⁱˊ;

    iget-object v4, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-class v6, Lٴʻ/ﹳٴ;

    invoke-virtual {v2, v6, v4}, Lﹳʽ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;Ljava/lang/String;)Lﹳʽ/ᵎﹶ;

    move-result-object v2

    iget-object v4, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-virtual {v2, v4}, Lﹳʽ/ᵎﹶ;->ﹳٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lٴʻ/ﹳٴ;

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/י;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v1, :cond_b

    if-eq v4, v5, :cond_a

    const/4 v1, 0x3

    if-eq v4, v1, :cond_9

    if-ne v4, v3, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown output prefix type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    sget-object p1, Lﹳʽ/יـ;->ﹳٴ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    goto :goto_3

    :cond_a
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lﹳʽ/יـ;->ﹳٴ(I)Lʾᐧ/ﹳٴ;

    move-result-object p1

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lﹳʽ/יـ;->ⁱˊ(I)Lʾᐧ/ﹳٴ;

    move-result-object p1

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    :goto_3
    new-instance v0, Lיʻ/ˑﹳ;

    invoke-direct {v0, v2, p1}, Lיʻ/ˑﹳ;-><init>(Lٴʻ/ﹳٴ;[B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ⁱˊ(Lﹳʽ/ᴵᵔ;)Lﹳˋ/ʽʽ;
    .locals 5

    .prologue
    iget v0, p0, Lˑʿ/ˏי;->ʾˋ:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ﹳᐧ;->ˊʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ﹳᐧ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ﹳᐧ;->ˈٴ()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lיʻ/ᵔʾ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ﹳᐧ;->ᴵˊ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v0}, Lᴵﹳ/ﹳᐧ;->ʽʽ()Lᴵﹳ/ʻٴ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ʻٴ;->ᴵˊ()I

    move-result v2

    invoke-virtual {v1, v2}, Lˏˆ/ﹳٴ;->ᵔٴ(I)V

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ˊˋ()V

    iget-object v2, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lᴵﹳ/י;

    invoke-static {v2}, Lיٴ/ⁱˊ;->ʽ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object v2

    iput-object v2, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ﾞʻ()Lיʻ/ᵔʾ;

    move-result-object v1

    new-instance v2, Lˑי/ʽ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    iput-object v3, v2, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, v2, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {v0}, Lᴵﹳ/ﹳᐧ;->ᴵˊ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ﾞᴵ()[B

    move-result-object v0

    new-instance v1, Landroidx/leanback/widget/ˉˆ;

    invoke-static {v0}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v0

    const/16 v3, 0xd

    invoke-direct {v1, v3, v0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iput-object v1, v2, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, v2, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v2}, Lˑי/ʽ;->ﹳᐧ()Lיʻ/ﾞʻ;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing AesEaxcKey failed"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type URL in call to AesEaxProtoSerialization.parseKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ᵔᵢ;->ˊʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ᵔᵢ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ᵔᵢ;->ˈٴ()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lᴵﹳ/ᵔᵢ;->ᴵˊ()Lᴵﹳ/ﾞʻ;

    move-result-object v1

    invoke-virtual {v1}, Lᴵﹳ/ﾞʻ;->ᴵᵔ()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lᴵﹳ/ᵔᵢ;->ʽʽ()Lᴵﹳ/ˋᵔ;

    move-result-object v1

    invoke-virtual {v1}, Lᴵﹳ/ˋᵔ;->ᴵᵔ()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lיʻ/ٴﹶ;->ⁱˊ()Lﹳʽ/ᴵᵔ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ᵔᵢ;->ᴵˊ()Lᴵﹳ/ﾞʻ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ﾞʻ;->ʽʽ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lﹳʽ/ᴵᵔ;->ʼᐧ(I)V

    invoke-virtual {v0}, Lᴵﹳ/ᵔᵢ;->ʽʽ()Lᴵﹳ/ˋᵔ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ˋᵔ;->ʽʽ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lﹳʽ/ᴵᵔ;->ᵔﹳ(I)V

    invoke-virtual {v0}, Lᴵﹳ/ᵔᵢ;->ᴵˊ()Lᴵﹳ/ﾞʻ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ﾞʻ;->ˈٴ()Lᴵﹳ/ʼᐧ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ʼᐧ;->ᴵˊ()I

    move-result v2

    invoke-virtual {v1, v2}, Lﹳʽ/ᴵᵔ;->ﹳᐧ(I)V

    invoke-virtual {v0}, Lᴵﹳ/ᵔᵢ;->ʽʽ()Lᴵﹳ/ˋᵔ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ˋᵔ;->ˈٴ()Lᴵﹳ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ﹳـ;->ˈٴ()I

    move-result v2

    invoke-virtual {v1, v2}, Lﹳʽ/ᴵᵔ;->ˏי(I)V

    invoke-virtual {v0}, Lᴵﹳ/ᵔᵢ;->ʽʽ()Lᴵﹳ/ˋᵔ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ˋᵔ;->ˈٴ()Lᴵﹳ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ﹳـ;->ʽʽ()Lᴵﹳ/ˈʿ;

    move-result-object v2

    invoke-static {v2}, Lיٴ/ﹳٴ;->ⁱˊ(Lᴵﹳ/ˈʿ;)Lיʻ/ˆʾ;

    move-result-object v2

    iput-object v2, v1, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    iget-object v2, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lᴵﹳ/י;

    invoke-static {v2}, Lיٴ/ﹳٴ;->ˈ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object v2

    iput-object v2, v1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v1}, Lﹳʽ/ᴵᵔ;->ˑﹳ()Lיʻ/ٴﹶ;

    move-result-object v1

    new-instance v2, Lˏˆ/ﹳٴ;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lˏˆ/ﹳٴ;-><init>(IZ)V

    const/4 v3, 0x0

    iput-object v3, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iput-object v3, v2, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object v3, v2, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v1, v2, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v0}, Lᴵﹳ/ᵔᵢ;->ᴵˊ()Lᴵﹳ/ﾞʻ;

    move-result-object v1

    invoke-virtual {v1}, Lᴵﹳ/ﾞʻ;->ʽʽ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ﾞᴵ()[B

    move-result-object v1

    new-instance v3, Landroidx/leanback/widget/ˉˆ;

    invoke-static {v1}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v1

    const/16 v4, 0xd

    invoke-direct {v3, v4, v1}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iput-object v3, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v0}, Lᴵﹳ/ᵔᵢ;->ʽʽ()Lᴵﹳ/ˋᵔ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ˋᵔ;->ʽʽ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ﾞᴵ()[B

    move-result-object v0

    new-instance v1, Landroidx/leanback/widget/ˉˆ;

    invoke-static {v0}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v0

    const/16 v3, 0xd

    invoke-direct {v1, v3, v0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iput-object v1, v2, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, v2, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v2}, Lˏˆ/ﹳٴ;->ٴﹶ()Lיʻ/ᵎﹶ;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys inner HMAC keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys inner AES CTR keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing AesCtrHmacAeadKey failed"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_1
    const-string v0, "KmsEnvelopeAeadKeys are only accepted with version 0, got "

    iget-object v1, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_2
    iget-object v1, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v2

    invoke-static {v1, v2}, Lᴵﹳ/ـᵎ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ـᵎ;

    move-result-object v1

    invoke-virtual {v1}, Lᴵﹳ/ـᵎ;->ᴵˊ()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lᴵﹳ/ـᵎ;->ʾˋ()Lᴵﹳ/ᐧﹶ;

    move-result-object v0

    iget-object v1, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lᴵﹳ/י;

    invoke-static {v0, v1}, Lיʻ/ˊʻ;->ﹳٴ(Lᴵﹳ/ᐧﹶ;Lᴵﹳ/י;)Lיʻ/ᴵᵔ;

    move-result-object v0

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lיʻ/ˈٴ;->ٴᵢ(Lיʻ/ᴵᵔ;Ljava/lang/Integer;)Lיʻ/ˈٴ;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsEnvelopeAeadKey failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_2
    const-string v0, "KmsAeadKey are only accepted with version 0, got "

    iget-object v1, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :try_start_3
    iget-object v1, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v2

    invoke-static {v1, v2}, Lᴵﹳ/ʻˋ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ʻˋ;

    move-result-object v1

    invoke-virtual {v1}, Lᴵﹳ/ʻˋ;->ᴵˊ()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lᴵﹳ/ʻˋ;->ʾˋ()Lᴵﹳ/ٴﹳ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ٴﹳ;->ᴵˊ()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lᴵﹳ/י;

    invoke-static {v1}, Lיʻ/ʽʽ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object v1

    new-instance v2, Lיʻ/ᴵˊ;

    invoke-direct {v2, v0, v1}, Lיʻ/ᴵˊ;-><init>(Ljava/lang/String;Lיʻ/ˆʾ;)V

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v2, p1}, Lיʻ/ʾˋ;->ٴᵢ(Lיʻ/ᴵˊ;Ljava/lang/Integer;)Lיʻ/ʾˋ;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsAeadKey failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_2
        0x12 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public ﹳٴ(Lٴʻ/ʼˎ;)Lﹳʽ/ˊʻ;
    .locals 6

    .prologue
    iget v0, p0, Lˑʿ/ˏי;->ʾˋ:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Lיʻ/ᵔʾ;

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-static {}, Lᴵﹳ/ˏי;->ˈٴ()Lᴵﹳ/יـ;

    move-result-object v1

    invoke-static {p1}, Lיٴ/ⁱˊ;->ﹳٴ(Lיʻ/ᵔʾ;)Lᴵﹳ/ʻٴ;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ˏי;

    invoke-static {v3, v2}, Lᴵﹳ/ˏי;->ᵢˏ(Lᴵﹳ/ˏי;Lᴵﹳ/ʻٴ;)V

    iget v2, p1, Lיʻ/ᵔʾ;->ﹳٴ:I

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ˏי;

    invoke-static {v3, v2}, Lᴵﹳ/ˏי;->ʾˋ(Lᴵﹳ/ˏי;I)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ˏי;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object p1, p1, Lיʻ/ᵔʾ;->ˈ:Lיʻ/ˆʾ;

    invoke-static {p1}, Lיٴ/ⁱˊ;->ⁱˊ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-static {p1}, Lﹳʽ/ˊʻ;->ˉʿ(Lᴵﹳ/ᵎᵔ;)Lﹳʽ/ˊʻ;

    move-result-object p1

    return-object p1

    :sswitch_0
    check-cast p1, Lיʻ/ٴﹶ;

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-static {}, Lᴵﹳ/ˆʾ;->ˈٴ()Lᴵﹳ/ʼˎ;

    move-result-object v1

    invoke-static {}, Lᴵﹳ/ᵔʾ;->ᴵᵔ()Lᴵﹳ/ˉʿ;

    move-result-object v2

    invoke-static {}, Lᴵﹳ/ʼᐧ;->ʽʽ()Lᴵﹳ/ˉˆ;

    move-result-object v3

    iget v4, p1, Lיʻ/ٴﹶ;->ʽ:I

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v5, v3, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v5, Lᴵﹳ/ʼᐧ;

    invoke-static {v5, v4}, Lᴵﹳ/ʼᐧ;->ᵢˏ(Lᴵﹳ/ʼᐧ;I)V

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v3

    check-cast v3, Lᴵﹳ/ʼᐧ;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v4, Lᴵﹳ/ᵔʾ;

    invoke-static {v4, v3}, Lᴵﹳ/ᵔʾ;->ᵢˏ(Lᴵﹳ/ᵔʾ;Lᴵﹳ/ʼᐧ;)V

    iget v3, p1, Lיʻ/ٴﹶ;->ﹳٴ:I

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v4, Lᴵﹳ/ᵔʾ;

    invoke-static {v4, v3}, Lᴵﹳ/ᵔʾ;->ʾˋ(Lᴵﹳ/ᵔʾ;I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v2

    check-cast v2, Lᴵﹳ/ᵔʾ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ˆʾ;

    invoke-static {v3, v2}, Lᴵﹳ/ˆʾ;->ᵢˏ(Lᴵﹳ/ˆʾ;Lᴵﹳ/ᵔʾ;)V

    invoke-static {}, Lᴵﹳ/ʼˈ;->ˊʻ()Lᴵﹳ/ˊˋ;

    move-result-object v2

    invoke-static {p1}, Lיٴ/ﹳٴ;->ﹳٴ(Lיʻ/ٴﹶ;)Lᴵﹳ/ﹳـ;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v4, Lᴵﹳ/ʼˈ;

    invoke-static {v4, v3}, Lᴵﹳ/ʼˈ;->ᵢˏ(Lᴵﹳ/ʼˈ;Lᴵﹳ/ﹳـ;)V

    iget v3, p1, Lיʻ/ٴﹶ;->ⁱˊ:I

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v4, Lᴵﹳ/ʼˈ;

    invoke-static {v4, v3}, Lᴵﹳ/ʼˈ;->ʾˋ(Lᴵﹳ/ʼˈ;I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v2

    check-cast v2, Lᴵﹳ/ʼˈ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ˆʾ;

    invoke-static {v3, v2}, Lᴵﹳ/ˆʾ;->ʾˋ(Lᴵﹳ/ˆʾ;Lᴵﹳ/ʼˈ;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ˆʾ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object p1, p1, Lיʻ/ٴﹶ;->ˑﹳ:Lיʻ/ˆʾ;

    invoke-static {p1}, Lיٴ/ﹳٴ;->ʽ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-static {p1}, Lﹳʽ/ˊʻ;->ˉʿ(Lᴵﹳ/ᵎᵔ;)Lﹳʽ/ˊʻ;

    move-result-object p1

    return-object p1

    :sswitch_1
    check-cast p1, Lיʻ/ᴵᵔ;

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-static {p1}, Lיʻ/ˊʻ;->ⁱˊ(Lיʻ/ᴵᵔ;)Lᴵﹳ/ᐧﹶ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object p1, p1, Lיʻ/ᴵᵔ;->ﹳٴ:Lיʻ/ˆʾ;

    invoke-static {p1}, Lיʻ/ˊʻ;->ʽ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-static {p1}, Lﹳʽ/ˊʻ;->ˉʿ(Lᴵﹳ/ᵎᵔ;)Lﹳʽ/ˊʻ;

    move-result-object p1

    return-object p1

    :sswitch_2
    check-cast p1, Lיʻ/ᴵˊ;

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-static {}, Lᴵﹳ/ٴﹳ;->ʽʽ()Lᴵﹳ/ˑʼ;

    move-result-object v1

    iget-object v2, p1, Lיʻ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ٴﹳ;

    invoke-static {v3, v2}, Lᴵﹳ/ٴﹳ;->ᵢˏ(Lᴵﹳ/ٴﹳ;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ٴﹳ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object p1, p1, Lיʻ/ᴵˊ;->ⁱˊ:Lיʻ/ˆʾ;

    invoke-static {p1}, Lיʻ/ʽʽ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-static {p1}, Lﹳʽ/ˊʻ;->ˉʿ(Lᴵﹳ/ᵎᵔ;)Lﹳʽ/ˊʻ;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0xf -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public ﾞᴵ(Lﹳˋ/ʽʽ;)Lﹳʽ/ᴵᵔ;
    .locals 6

    .prologue
    iget v0, p0, Lˑʿ/ˏי;->ʾˋ:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Lיʻ/ﾞʻ;

    invoke-static {}, Lᴵﹳ/ﹳᐧ;->ᴵᵔ()Lᴵﹳ/ᵔﹳ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ﾞʻ;->ˈٴ:Lיʻ/ᵔʾ;

    invoke-static {v1}, Lיٴ/ⁱˊ;->ﹳٴ(Lיʻ/ᵔʾ;)Lᴵﹳ/ʻٴ;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ﹳᐧ;

    invoke-static {v2, v1}, Lᴵﹳ/ﹳᐧ;->ᵢˏ(Lᴵﹳ/ﹳᐧ;Lᴵﹳ/ʻٴ;)V

    iget-object v1, p1, Lיʻ/ﾞʻ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ﹳᐧ;

    invoke-static {v2, v1}, Lᴵﹳ/ﹳᐧ;->ʾˋ(Lᴵﹳ/ﹳᐧ;Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ﹳᐧ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ﾞʻ;->ˈٴ:Lיʻ/ᵔʾ;

    iget-object v1, v1, Lיʻ/ᵔʾ;->ˈ:Lיʻ/ˆʾ;

    invoke-static {v1}, Lיٴ/ⁱˊ;->ⁱˊ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object v1

    iget-object p1, p1, Lיʻ/ﾞʻ;->ٴᵢ:Ljava/lang/Integer;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    sget-object v3, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-static {v2, v0, v3, v1, p1}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :sswitch_0
    check-cast p1, Lיʻ/ᵎﹶ;

    invoke-static {}, Lᴵﹳ/ᵔᵢ;->ᴵᵔ()Lᴵﹳ/ᵎﹶ;

    move-result-object v0

    invoke-static {}, Lᴵﹳ/ﾞʻ;->ˊʻ()Lᴵﹳ/ٴﹶ;

    move-result-object v1

    invoke-static {}, Lᴵﹳ/ʼᐧ;->ʽʽ()Lᴵﹳ/ˉˆ;

    move-result-object v2

    iget-object v3, p1, Lיʻ/ᵎﹶ;->ˈٴ:Lיʻ/ٴﹶ;

    iget v3, v3, Lיʻ/ٴﹶ;->ʽ:I

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v4, Lᴵﹳ/ʼᐧ;

    invoke-static {v4, v3}, Lᴵﹳ/ʼᐧ;->ᵢˏ(Lᴵﹳ/ʼᐧ;I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v2

    check-cast v2, Lᴵﹳ/ʼᐧ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ﾞʻ;

    invoke-static {v3, v2}, Lᴵﹳ/ﾞʻ;->ᵢˏ(Lᴵﹳ/ﾞʻ;Lᴵﹳ/ʼᐧ;)V

    iget-object v2, p1, Lיʻ/ᵎﹶ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v2, v2, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʾᐧ/ﹳٴ;

    invoke-virtual {v2}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ﾞʻ;

    invoke-static {v3, v2}, Lᴵﹳ/ﾞʻ;->ʾˋ(Lᴵﹳ/ﾞʻ;Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ﾞʻ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ᵔᵢ;

    invoke-static {v2, v1}, Lᴵﹳ/ᵔᵢ;->ᵢˏ(Lᴵﹳ/ᵔᵢ;Lᴵﹳ/ﾞʻ;)V

    invoke-static {}, Lᴵﹳ/ˋᵔ;->ˊʻ()Lᴵﹳ/ˑٴ;

    move-result-object v1

    iget-object v2, p1, Lיʻ/ᵎﹶ;->ˈٴ:Lיʻ/ٴﹶ;

    invoke-static {v2}, Lיٴ/ﹳٴ;->ﹳٴ(Lיʻ/ٴﹶ;)Lᴵﹳ/ﹳـ;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v5, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v5, Lᴵﹳ/ˋᵔ;

    invoke-static {v5, v3}, Lᴵﹳ/ˋᵔ;->ᵢˏ(Lᴵﹳ/ˋᵔ;Lᴵﹳ/ﹳـ;)V

    iget-object v3, p1, Lיʻ/ᵎﹶ;->ˊʻ:Landroidx/leanback/widget/ˉˆ;

    iget-object v3, v3, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lʾᐧ/ﹳٴ;

    invoke-virtual {v3}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v3

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v4, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v4, Lᴵﹳ/ˋᵔ;

    invoke-static {v4, v3}, Lᴵﹳ/ˋᵔ;->ʾˋ(Lᴵﹳ/ˋᵔ;Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ˋᵔ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ᵔᵢ;

    invoke-static {v3, v1}, Lᴵﹳ/ᵔᵢ;->ʾˋ(Lᴵﹳ/ᵔᵢ;Lᴵﹳ/ˋᵔ;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ᵔᵢ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v0

    iget-object v1, v2, Lיʻ/ٴﹶ;->ˑﹳ:Lיʻ/ˆʾ;

    invoke-static {v1}, Lיٴ/ﹳٴ;->ʽ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object v1

    iget-object p1, p1, Lיʻ/ᵎﹶ;->ˉٴ:Ljava/lang/Integer;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    sget-object v3, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-static {v2, v0, v3, v1, p1}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :sswitch_1
    check-cast p1, Lיʻ/ˈٴ;

    invoke-static {}, Lᴵﹳ/ـᵎ;->ʽʽ()Lᴵﹳ/ᵎʻ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ˈٴ;->ˈٴ:Lיʻ/ᴵᵔ;

    invoke-static {v1}, Lיʻ/ˊʻ;->ⁱˊ(Lיʻ/ᴵᵔ;)Lᴵﹳ/ᐧﹶ;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ـᵎ;

    invoke-static {v2, v1}, Lᴵﹳ/ـᵎ;->ᵢˏ(Lᴵﹳ/ـᵎ;Lᴵﹳ/ᐧﹶ;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ـᵎ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ˈٴ;->ˈٴ:Lיʻ/ᴵᵔ;

    iget-object v1, v1, Lיʻ/ᴵᵔ;->ﹳٴ:Lיʻ/ˆʾ;

    invoke-static {v1}, Lיʻ/ˊʻ;->ʽ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object v1

    iget-object p1, p1, Lיʻ/ˈٴ;->ˊʻ:Ljava/lang/Integer;

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    sget-object v3, Lᴵﹳ/ᴵˑ;->ˊʻ:Lᴵﹳ/ᴵˑ;

    invoke-static {v2, v0, v3, v1, p1}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :sswitch_2
    check-cast p1, Lיʻ/ʾˋ;

    invoke-static {}, Lᴵﹳ/ʻˋ;->ʽʽ()Lᴵﹳ/ﹳﹳ;

    move-result-object v0

    invoke-static {}, Lᴵﹳ/ٴﹳ;->ʽʽ()Lᴵﹳ/ˑʼ;

    move-result-object v1

    iget-object v2, p1, Lיʻ/ʾˋ;->ˈٴ:Lיʻ/ᴵˊ;

    iget-object v2, v2, Lיʻ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ٴﹳ;

    invoke-static {v3, v2}, Lᴵﹳ/ٴﹳ;->ᵢˏ(Lᴵﹳ/ٴﹳ;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ٴﹳ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ʻˋ;

    invoke-static {v2, v1}, Lᴵﹳ/ʻˋ;->ᵢˏ(Lᴵﹳ/ʻˋ;Lᴵﹳ/ٴﹳ;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ʻˋ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ʾˋ;->ˈٴ:Lיʻ/ᴵˊ;

    iget-object v1, v1, Lיʻ/ᴵˊ;->ⁱˊ:Lיʻ/ˆʾ;

    invoke-static {v1}, Lיʻ/ʽʽ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object v1

    iget-object p1, p1, Lיʻ/ʾˋ;->ˊʻ:Ljava/lang/Integer;

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    sget-object v3, Lᴵﹳ/ᴵˑ;->ˊʻ:Lᴵﹳ/ᴵˑ;

    invoke-static {v2, v0, v3, v1, p1}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_2
        0x11 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method
