.class public final Landroidx/datastore/preferences/protobuf/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;
    .locals 2

    .prologue
    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ـˆ;

    move-object v1, v0

    check-cast v1, Landroidx/datastore/preferences/protobuf/ⁱˊ;

    iget-boolean v1, v1, Landroidx/datastore/preferences/protobuf/ⁱˊ;->ʾˋ:Z

    if-nez v1, :cond_1

    check-cast v0, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    iget v1, v0, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ʽʽ:I

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ˈ(I)Landroidx/datastore/preferences/protobuf/ˋᵔ;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method
