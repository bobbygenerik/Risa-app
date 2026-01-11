.class public final synthetic Lⁱי/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˏ/ʽﹳ;


# instance fields
.field public final synthetic ʾˋ:Lⁱי/ᴵᵔ;

.field public final synthetic ᴵˊ:Lﾞˏ/ʽﹳ;


# direct methods
.method public synthetic constructor <init>(Lⁱי/ᴵᵔ;Lﾞˏ/ʽﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ᵢˏ;->ʾˋ:Lⁱי/ᴵᵔ;

    iput-object p2, p0, Lⁱי/ᵢˏ;->ᴵˊ:Lﾞˏ/ʽﹳ;

    return-void
.end method


# virtual methods
.method public final ʽ(JJLʽⁱ/ﹳᐧ;Landroid/media/MediaFormat;)V
    .locals 8

    iget-object v0, p0, Lⁱי/ᵢˏ;->ʾˋ:Lⁱי/ᴵᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lⁱי/ᵢˏ;->ᴵˊ:Lﾞˏ/ʽﹳ;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lﾞˏ/ʽﹳ;->ʽ(JJLʽⁱ/ﹳᐧ;Landroid/media/MediaFormat;)V

    move-wide v1, v2

    move-wide v3, v4

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lⁱי/ᴵᵔ;->ʽ(JJLʽⁱ/ﹳᐧ;Landroid/media/MediaFormat;)V

    return-void
.end method
