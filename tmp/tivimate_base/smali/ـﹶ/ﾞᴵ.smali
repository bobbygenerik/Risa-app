.class public final Lـﹶ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public volatile ⁱˊ:Ljava/lang/Object;

.field public volatile ﹳٴ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lˏ/ˉʿ;)V
    .locals 3

    new-instance v0, Lˆʿ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lٴﾞ/ˆʾ;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lٴﾞ/ˆʾ;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lـﹶ/ﾞᴵ;->ⁱˊ:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lـﹶ/ﾞᴵ;->ʽ:Ljava/lang/Object;

    iput-object v1, p0, Lـﹶ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    new-instance v0, Lᵎˉ/ﹳٴ;

    invoke-direct {v0, p0}, Lᵎˉ/ﹳٴ;-><init>(Lـﹶ/ﾞᴵ;)V

    invoke-virtual {p1, v0}, Lˏ/ˉʿ;->ﹳٴ(Lʾﹳ/ﹳٴ;)V

    return-void
.end method

.method public constructor <init>(Lـﹶ/ˆʾ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـﹶ/ﾞᴵ;->ʽ:Ljava/lang/Object;

    return-void
.end method
