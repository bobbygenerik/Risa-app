.class public abstract Lˊʼ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊʼ/ᵔᵢ;
.implements Ljava/io/Serializable;


# instance fields
.field public final ʾˋ:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˊʼ/ٴﹶ;->ʾˋ:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lˊʼ/ʽﹳ;->ﹳٴ:Lˊʼ/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lˊʼ/ʻٴ;->ﹳٴ(Lˊʼ/ᵔᵢ;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ()I
    .locals 1

    iget v0, p0, Lˊʼ/ٴﹶ;->ʾˋ:I

    return v0
.end method
