.class public final Landroidx/datastore/preferences/protobuf/ᵎᵔ;
.super Landroidx/datastore/preferences/protobuf/ʿ;
.source "SourceFile"


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ʿᵢ;
    .locals 5

    .prologue
    check-cast p1, Landroidx/datastore/preferences/protobuf/ʻٴ;

    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ﾞᴵ:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroidx/datastore/preferences/protobuf/ʿᵢ;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v1, v3}, Landroidx/datastore/preferences/protobuf/ʿᵢ;-><init>(I[I[Ljava/lang/Object;Z)V

    iput-object v0, p1, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    :cond_0
    return-object v0
.end method
